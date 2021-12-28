from pathlib import Path
from json import loads as JSON_parse
from json import dumps as JSON_stringify
from os import path, sep,makedirs,listdir
from codecs import open as openFile
from uuid import uuid1
from hashlib import md5
from datetime import datetime
from app import app

try:
    import xml.etree.cElementTree as ET
except ImportError:
    import xml.etree.ElementTree as ET

nameElementHeshMap = {}  # список ХЭШ названий элементов, для пеобразования
nameElementMap = {}  # список названий элементов
DB_DICT = {}  # Список БД по  сессиям
SESSION_DICT = {}  # Словарь содержащий сессии удаленных серверов
TEMP_DIR_PATH = path.join(path.dirname(__file__), app.template_folder.replace('/', sep))  # Директория  хронения временных файлов

ROOT_DIR = path.join(path.dirname(__file__))               # Корневая папка
FORM_DIR = "Forms"                                         # Каталог расположения форм
USER_DIR = "UserForms"                                     # Каталог фрагментами для переопределения форм
FORM_PATH = path.join(path.dirname(__file__), FORM_DIR )       # Директория  где хронятся формы


global TMP_PAGE_CAHE
TMP_PAGE_CAHE = {}

# Шаблон JS файла для динамической загрузки ExtJS формы из JS функции  "openForm"
TEMP_JS_FORM = """
  Ext.onReady(function() {
       let {%frmObj%}_onclose = function(data){ }
       let {%frmObj%} = {%};
       if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
           if (typeof(window.ExtObj["FormsObject"]['{%formName%}']) !== 'function') {
              {%frmObj%}['parentEvent'] = window.ExtObj["FormsObject"]['{%formName%}'];
              delete window.ExtObj["FormsObject"]['{%formName%}'];
           }
       }
       if ( typeof({%frmObj%}['vars']) !=='undefined') {%frmObj%}['vars'] = {};
       {%frmObj%}["vars"]//=[[%DataVars%]]
       if ( typeof({%frmObj%}['formName']) !=='undefined') {
            if (localStorage.getItem("ExtJsFormVars:"+{%frmObj%}['formName']) !== null) {
                let {%frmObj%}dataText = localStorage.getItem("ExtJsFormVars:"+{%frmObj%}['formName']);
                if ({%frmObj%}dataText !== '{}') {
                    try {
                       let {%frmObj%}_parentVars = JSON.parse({%frmObj%}dataText);
                       if (typeof({%frmObj%}_parentVars['vars']) !== 'undefined') {
                           for( let {%frmObj%}_key in {%frmObj%}_parentVars['vars']) {
                              {%frmObj%}['vars'][{%frmObj%}_key] = {%frmObj%}_parentVars['vars'][{%frmObj%}_key];
                           } 
                        }
                       if (typeof({%frmObj%}_parentVars['parentFrom']) !== 'undefined') {
                         {%frmObj%}['parentFrom'] = {%frmObj%}_parentVars['parentFrom'];
                       }
                       delete {%frmObj%}_parentVars;
                    } catch {
                       console.log("Error: Не удалось получить переменные из родительского окна")
                    } 
                }
                localStorage.removeItem("ExtJsFormVars:"+{%frmObj%}['formName']);      
                delete {%frmObj%}dataText;
            }
       }
       {%cmpScript%}
       let Win_{%frmObj%} = Ext.create('{%ExtClass%}',{%frmObj%});
       Win_{%frmObj%}{%showWin%};
  });
"""

# Шаблон HTML файла для визуализации форм *.frm
TEMP_HTML_FORM = """<!DOCTYPE html>
<html>
   <head>
        <meta charset="utf-8"/>
        <link href="lib/ExtJS_6.0.0/theme-classic-all.css" rel="stylesheet" />
        <script type="text/javascript" src="lib/ExtJS_6.0.0/ext-all.js"></script>
        <script type="text/javascript" src="js/common.js"></script>
        <script type = "text/javascript">
             Ext.onReady(function() {
                 openForm("{%}",{%isMOdal%},{%data%});
             });
        </script>
   </head>
   <body></body>
</html>
"""


def existContentExtJs(formName,isHtml=0):
    """
    Функция проверки наличия файлов в  каталоге исходников "Form" и временных файлах
    """
    pathHtmlFromForm = f"{ROOT_DIR}{sep}{FORM_DIR}{sep}{formName}"
    if path.isfile(pathHtmlFromForm):
        return True, pathHtmlFromForm
    resBool,pathHtmlFromForm = existContentExtJsTemp(formName,isHtml)
    if resBool == True:
        return True, pathHtmlFromForm
    return False, None


def existContentExtJsTemp(formName,isHtml=0):
    """
    Функция проверки наличия формы в временых файлах
    """
    blockName = ""
    if ":" in formName:
        blockName, formName = formName.split(":")
    cmpDirSrc = TEMP_DIR_PATH
    ext = formName[formName.rfind('.') + 1:].lower()
    if len(ext)==0:
        formNameBody = formName
        ext = "frm"
    else:
        formNameBody = formName[:((len(ext))*-1)-1]
    if isHtml==2:
        ext = "js"
    cmpFiletmp = path.join(cmpDirSrc, f"{formNameBody.replace(sep, '_')}{blockName}.{ext}").replace("/",sep)
    if existTempPage(cmpFiletmp):
        return True,cmpFiletmp
    return False,None


def getParsedForm(formName, data, session={}, isHtml=0):
    """
      Функция предназаначенна дла  чтения исходного файла формы и замены его фрагментов на компоненты
    """
    getTempCont = True
    if "debug" in data and int(data["debug"]) > 0:
        getTempCont = False
    if getTempCont:
        return getTemp(formName, data, session,isHtml)
    else:
        return getSrc(formName, data, session,isHtml)


def replaceTempData(ext,txt, data):
    """
      Вставить переменные в текстовый шаблон ExtJS файла
    """
    extListHtml = ["frm",'js',"html"] # список разрешений которые обрабатываются как текст
    if ext in extListHtml:
        if "vars" in data:
            txt = txt.replace("//=[[%DataVars%]]", f"={JSON_stringify(data['vars'], ensure_ascii=False)}")
            del data["vars"]
        if "isModal" in data:
            if not 'width' in data:
               data['width'] = 800
            if not 'height' in data:
               data['height'] = 600
        jsonExtens = f"{JSON_stringify(data, ensure_ascii=False)}"[1:-1]
        if len(jsonExtens)>0:
            txt = txt.replace("//[[%INPETDATA%]]",f",{jsonExtens}")
    return txt

def getTemp(formName, data, session, isHtml=0):
    """
    Функция получения кэшированной формы (в папке темп HTML)
    """
    blockName = ""
    if ":" in formName:
        blockName, formName = formName.split(":")
    cmpDirSrc = TEMP_DIR_PATH
    ext = formName[formName.rfind('.') + 1:].lower()
    if len(ext)==0:
        formNameBody = formName
        ext = "frm"
    else:
        formNameBody = formName[:((len(ext))*-1)-1]
    if isHtml==2:
        ext = "js"
    cmpFiletmp = path.join(cmpDirSrc, f"{formNameBody.replace(sep, '_')}{blockName}.{ext}").replace("/",sep)
    mime = mimeType(ext)
    if not path.exists(cmpDirSrc):
        makedirs(cmpDirSrc)
    txt = ""
    if existTempPage(cmpFiletmp):
        txt, mimeTmp = getTempPage(cmpFiletmp, "")
    if not txt == "":
        txt = replaceTempData(ext, txt, data)
        return txt, mime
    if not path.exists(cmpFiletmp):
        if not path.exists(path.dirname(cmpFiletmp)):
            makedirs(path.dirname(cmpFiletmp))
        with open(cmpFiletmp, "wb") as d3_css:
            txt, mime = getSrc(formName, data, session,isHtml)
            d3_css.write(txt.encode())
            setTempPage(cmpFiletmp, txt)
            txt = replaceTempData(ext, txt, data)
            return txt, mime
    else:
        with open(cmpFiletmp, "rb") as infile:
            txt = infile.read()
            setTempPage(cmpFiletmp, txt)
            txt = replaceTempData(ext, txt, data)
            return txt, mime



def readFile(pathForm):
    """
    Чтение исходного текстового файла, и добавление Элементов для дальнейшего преобразование в XML
    """
    if not path.exists(pathForm):
        return f'''<error> Form not found </error>'''
    with openFile(pathForm, 'r', encoding='utf8') as f:
        xmlContentSrc = f.read()
    # нормализовать код  Вставить <![CDATA[ ]] > в тэги  script  cmpScript
    ext = pathForm[pathForm.rfind('.') + 1:].lower()
    if ext == "html":
        # Добавляем CSS библиотеку, если её не указали на форме
        if not "ext-6.2.0/classic/theme-classic/resources/theme-classic-all.css" in xmlContentSrc and "</head>" in xmlContentSrc:
            fragBegin, fragEnd = xmlContentSrc.split("</head>")
            xmlContentSrc = f'{fragBegin}  <link href = "ext-6.2.0/classic/theme-classic/resources/theme-classic-all.css" rel = "stylesheet" />\r\n</head>{fragEnd}'

        # Добавляем CSS библиотеку, если её не указали на форме
        if not "ext-6.2.0/ext-all.js" in xmlContentSrc and "</head>" in xmlContentSrc:
            fragBegin, fragEnd = xmlContentSrc.split("</head>")
            xmlContentSrc = f'{fragBegin} <script type="text/javascript" src="ext-6.2.0/ext-all.js"></script>\r\n</head>{fragEnd}'

        # Добавляем JS библиотеку, если её не указали на форме
        if not "js/common.js" in xmlContentSrc and "</head>" in xmlContentSrc:
            fragBegin, fragEnd = xmlContentSrc.split("</head>")
            xmlContentSrc = f'{fragBegin} <script type="text/javascript" src="js/common.js"></script>\r\n</head>{fragEnd}'
    # '<meta charset="UTF-8">'
    # https://tproger.ru/translations/regular-expression-python/
    # result = re.findall(r'/<meta[^<>]+>/g', xmlContentSrc)
    # print(result)
    if "</script>" in xmlContentSrc:
          #  Вставить <![CDATA[ ]] > в тэги  script  cmpScript
          #  желательно через регулярные вырожения
          pass
    return xmlContentSrc


def joinDfrm(formName, rootForm):
    """
    Обработать DFRM и FRM
    """
    USER_FORM_PATH = path.join(path.dirname(__file__), USER_DIR)
    pathUserFormDir = f"{USER_FORM_PATH}{sep}{formName}.d"
    if path.exists(pathUserFormDir):
        filesArr = [path.join(pathUserFormDir, fileName) for fileName in listdir(pathUserFormDir) if
                    fileName[-4:] == "dfrm"]
        xmldfrmtext = []
        for fileName in filesArr:
            xmldfrmtext.append(readFile(fileName))
        rootDfrmForm = ET.fromstring(f'<?xml version="1.0" encoding="UTF-8" ?><div>\n{"".join(xmldfrmtext)}</div>')
        for nodeXml in rootDfrmForm.iter(f'node'):
            findName = nodeXml.attrib.get("target")
            pos = nodeXml.attrib.get("pos")
            nodForm = None
            if "name" in rootForm.attrib:
                if rootForm.attrib.get('name') == findName:
                    nodForm = rootForm
            if nodForm == None:
                nodForm = rootForm.find(f"./*[@name='{findName}']")
            if nodForm == None:
                continue
            if pos == None:
                continue
            if pos == "del":
                rootForm.remove(nodForm)
            if pos == "after":
                fragArr = []
                for appEl in nodeXml.findall("*"):
                    # nodForm.append(appEl)
                    # nodForm.insert(0, appEl)
                    fragArr.append((ET.tostring(appEl)).decode('UTF-8'))
                txt = " ".join(fragArr)
                children = ET.fromstring(f'''<root>{ET.tostring(nodForm).decode('UTF-8')}{txt}</root>''')
                nodForm.clear()
                nodForm.extend(children)
            if pos == "before":
                fragArr = []
                for appEl in nodeXml.findall("*"):
                    fragArr.append((ET.tostring(appEl)).decode('UTF-8'))
                txt = " ".join(fragArr)
                children = ET.fromstring(f'''<root>{txt}{ET.tostring(nodForm).decode('UTF-8')}</root>''')
                nodForm.clear()
                nodForm.extend(children)
            if pos == "replace":
                fragArr = []
                for appEl in nodeXml.findall("*"):
                    fragArr.append((ET.tostring(appEl)).decode('UTF-8'))
                txt = " ".join(fragArr)
                children = ET.fromstring(f'''<root>{txt}</root>''')
                nodForm.clear()
                nodForm.extend(children)
        for attrXml in rootDfrmForm.iter('attr'):
            findNameAttr = attrXml.attrib.get("target")
            nodSrcForm = None
            if "name" in rootForm.attrib:
                if rootForm.attrib.get('name') == findNameAttr:
                    nodSrcForm = rootForm
            if nodSrcForm == None:
                nodSrcForm = rootForm.find(f"./*[@name='{findNameAttr}']")
            pos = attrXml.attrib.get("pos")
            nameFrag = attrXml.attrib.get("name")
            value = attrXml.attrib.get("value")
            if nodSrcForm == None:
                continue
            if pos == "del":
                nodSrcForm.attrib.pop(nameFrag, None)
            if pos == "replace":
                nodSrcForm.attrib[nameFrag] = value
            if pos == "after":
                nodSrcForm.attrib[nameFrag] = f"{nodSrcForm.attrib.get(nameFrag)}{value}"
            if pos == "before":
                nodSrcForm.attrib[nameFrag] = f"{value}{nodSrcForm.attrib.get(nameFrag)}"
            if pos == "add":
                nodSrcForm.attrib[nameFrag] = value
    # print(ET.tostring(rootForm))
    # nodes = [nodeXml for nodeXml in rootDfrmForm.findall(f'node')]
    # nodes.extend([attrXml for attrXml in rootDfrmForm.findall(f'attr')])
    return rootForm



def getXMLObject(formName):
    """
    Получение XML объекта из прочитаного файла (или фрагмента XML)
    """
    global TEMP_XML_PAGE
    if formName[0] == "/":
        formName[1:]
    # TEMP_DS_PAGE = {}
    blockName = ""
    if ":" in formName:
        blockName = formName.split(":")[1]
        formName = formName.split(":")[0]
    formName = formName.replace("/", sep)
    ext = formName[formName.rfind('.') + 1:].lower()
    USER_FORM_PATH = path.join(path.dirname(__file__), USER_DIR)

    if ext == "html" or ext == "frm":
        pathForm = f"{FORM_PATH}{sep}{formName}"
        pathUserForm = f"{USER_FORM_PATH}{sep}{formName}"
    else:
        pathForm = f"{FORM_PATH}{sep}{formName}.frm"
        pathUserForm = f"{USER_FORM_PATH}{sep}{formName}.frm"
    if path.exists(pathUserForm):
        pathForm = pathUserForm
    xmlText = f'<?xml version="1.0" encoding="UTF-8" ?>\n{readFile(pathForm)}'
    rootForm = ET.fromstring(xmlText)
    if rootForm.tag == "error":
        return rootForm
    rootForm = joinDfrm(formName, rootForm)
    script = rootForm.findall(f"cmpScript")
    if not blockName == "":  # получаем блок XML с именем blockName
        nodes = rootForm.findall(f"*[@name='{blockName}']")  # ишим фрагмент формы по атребуту имени
        if len(nodes) > 0:
            rootForm = nodes[0]
        else:
            nodes = rootForm.findall(f'*[@name="{blockName}"]')  # ишим фрагмент формы по атребуту имени
            if len(nodes) > 0:
                rootForm = nodes[0]
            else:
                nodes = rootForm.findall(f"""body""")[0].findall(f"""*[@name="{blockName}"]""")
                if len(nodes) > 0:
                    rootForm = nodes[0]
                else:
                    rootForm = ET.fromstring(f'<?xml version="1.0" encoding="UTF-8" ?>\n<error>Fragment "{formName}" not found </error>')
    return rootForm,script


def jsonFunFromString(html=""):
    """
      1) Заменить текстовое значение JSON объекта в JS
      2) Добавить к глобальным функциям передачу контекста, для определения места вызова глобадьной функции
    """
    html = html.replace("setVar(", "setVar(this,",)
    html = html.replace("getVar(", "getVar(this,",)
    html = html.replace("setValue(","setValue(this,",)
    html = html.replace("getValue(", "getValue(this,",)
    html = html.replace("openForm(", "openForm(this,",)
    html = html.replace("getControl(", "getControl(this,",)
    html = html.replace("close(", "close(this,",)
    html = html.replace("openWindow(", "openWindow(this,",)
    html = html.replace('"Ext.getBody()"', "Ext.getBody()",)
    html = html.replace('(--##--)\"', '')
    html = html.replace('\"(--##--)', '')
    html = html.replace('\"(--##--)', '')
    html = html.replace(', "', '\r\n, "')
    return html

def getSrc(formName, data={}, session={}, isHtml=0):
    """
     Функция получения JSON кода из FRM ("XML")
    """
    ext = formName[formName.rfind('.') + 1:].lower()
    frmObj = formName.replace("/","_").replace(".","")
    # ---- получить HTML файл с перенаправлением на JS формой
    if isHtml == 1:
        isModal = "false"
        if 'isModal' in data:
            isModal="true"
        html = TEMP_HTML_FORM.replace("{%}",formName) \
            .replace("{%data%}",JSON_stringify(data, ensure_ascii=False)) \
            .replace("{%isMOdal%}",isModal)
        html = jsonFunFromString(html)
        return  html,  mimeType(ext)
    rootForm, script = getXMLObject(formName)
    if rootForm.tag == "error":
        return f'{{"error":"{rootForm.text}"}}', "application/x-javascript"
    jsonFrm = parseXMLFrm(rootForm, formName, data, session)  # парсим XML форму
    jsonScript = parseXMLScript(script, formName, data, session) # парсим Script фрагменты
    jsonFrm['formName'] = formName
    jsonFrm['retuen_object'] = {}
    if not "listeners" in jsonFrm:
        jsonFrm["listeners"] = {}
    if not "parentEvent" in jsonFrm:
        jsonFrm["parentEvent"] = {}
    # ---- получить JS файл с формой
    if isHtml == 2:
        extClass = "Ext.Viewport"
        showWin = ""
        if "isModal" in data:
            jsonFrm['modal'] = True
            extClass = "Ext.window.Window"
            showWin=".show()"
        jsonFrm['layout'] = 'border'
        if not 'renderTo' in jsonFrm:
            jsonFrm['renderTo'] = 'Ext.getBody()';
        jsonFrmTxt = JSON_stringify(jsonFrm, ensure_ascii=False, sort_keys=True,indent=4, separators=(',', ': '))
        jsonFrmTxt = f" {jsonFrmTxt[:-1]}\r\n//[[%INPETDATA%]] \r\n }} "
        html = TEMP_JS_FORM.replace("{%}", jsonFrmTxt).replace("{%ExtClass%}",extClass)\
            .replace("{%frmObj%}",frmObj)\
            .replace("{%formName%}",formName)\
            .replace("{%cmpScript%}",jsonScript)\
            .replace("{%showWin%}",showWin)
        html = jsonFunFromString(html).replace("Form.", f"{frmObj}.")
        return html, mimeType(ext)
    jsonFrmTxt = JSON_stringify(jsonFrm, ensure_ascii=False, sort_keys=True,indent=4, separators=(',', ': '))
    jsonFrmTxt = f" {jsonFrmTxt[:-1]}\r\n,//[[%INPETDATA%]] \r\n }} "
    jsonFrmTxt = jsonFunFromString(jsonFrmTxt).replace("Form.", f"{frmObj}.")
    return jsonFrmTxt, "application/x-javascript"


def parseXMLScript(scriptXml, formName, data, session):
    """
      Распарсить лист XML  объектов cmpScript 
    """""
    scriptText = []
    for elem in scriptXml:
        xmldict = dict(elem.attrib.copy())
        scriptText.append(elem.text)
    return "\n".join(scriptText)


itemsThiwObject = ["buttons"]
itemsBlock = ['div','item']
def parseXMLFrm(root, formName, data, session, parentRoot=None,info={"numEl":0}):
    """
     Конвертировать XML объект формы в ExtJS объект
    """
    compName = ""
    if 'cmptype' in root.keys():
        compName = root.attrib['cmptype'].lower()
    else:
        if root.tag[:3] == 'cmp':
            compName = root.tag[3:].lower()
    if compName == "script" or compName == "dataset" or compName == "action":
        return None
    xmldict = dict(root.attrib.copy())
    info['numEl']+=1;
    # переносим события в блок "listeners"
    for k, v in xmldict.copy().items():
        if k[:2] == "on" and not xmldict[k][:len("function(")] == "function(" :
            if not "listeners" in xmldict:
                xmldict["listeners"] ={}
                xmldict["listeners"] = {"close": "function(){objectOnEvent['onclose'](objectServ['vars_return'])}"}
            xmldict["listeners"][k[2:]] = f"(--##--)function(){{ {v} }}(--##--)"
            del root.attrib[k]
        elif xmldict[k].strip()[:len("function(")] == "function(":
            xmldict[k] = f'(--##--){v}(--##--)'
        elif v.isdigit():
            xmldict[k] = int(v)
        elif v == "true" or v == "false":
            xmldict[k] = bool(v == "true")
        elif v.strip()[:4] == "new ":
            xmldict[k] = f'(--##--){v}(--##--)'
        elif v.strip()[:4] == "Ext.":
            xmldict[k] = f'(--##--){v}(--##--)'

    if parentRoot==None:
        xmldict["vars_return"] = {}
        if not "id" in xmldict:
            xmldict["id"] = "win"+md5(f'{str(uuid1()).replace("-", "")}{info["numEl"]}{xmldict}{datetime.now().microsecond}'.encode()).hexdigest()
            root.attrib["mainForm"] = xmldict["id"]
            xmldict["mainForm"] = xmldict["id"]
    else:
        root.attrib["mainForm"] = parentRoot.attrib["mainForm"]
        xmldict["mainForm"] = parentRoot.attrib["mainForm"]

    if not "id" in xmldict and "name" in xmldict:
        xmldict["id"] = "ctrl"+md5(f'{str(uuid1()).replace("-", "")}{info["numEl"]}{xmldict}{datetime.now().microsecond}'.encode()).hexdigest()

    if len(compName)>0 or root.tag.lower() in itemsBlock:
        if len(compName)>0:
            xmldict['xtype'] = compName.lower()
            if  xmldict['xtype'] == "button" and "onclick" in xmldict and not "handler" in xmldict:
                xmldict["handler"] = xmldict["onclick"]
                del xmldict["onclick"]

        htmlText = ""
        if not root.text == None:
            htmlText = f"{htmlText}{root.text}"
        if not root.tail == None:
            htmlText = f"{htmlText}{root.tail}"
        if len(htmlText) > 0 and len(htmlText.replace(" ","").replace("\n","").replace("\r",""))>0:
            xmldict['html'] = htmlText
        # del htmlText
        # =========== Рекурсионый обход дерева ============================
        if hasattr(root, 'getchildren'):
            for elem in root.getchildren():
                subObject = parseXMLFrm(elem, formName, data, session, root, info)
                if subObject == None:
                    continue
                blockName='items'
                if root.tag[3:].lower() == 'button':
                    blockName = 'menu'
                if not blockName in xmldict:
                    xmldict[blockName] = []
                xmldict[blockName].append(subObject)
        elif len(root) > 0:
            num_element = 0
            for elem in root:
                subObject = parseXMLFrm(elem, formName, data, session, root, info)
                if subObject == None:
                    continue
                blockName='items'
                if root.tag[3:].lower() == 'button':
                    blockName = 'menu'
                if not blockName in xmldict:
                    xmldict[blockName] = []
                xmldict[blockName].append(subObject)
        return xmldict
    # Поместить объект как атрибуты родительского объекта (Объединить свойства двух объектов)
    if root.tag.lower() in itemsThiwObject:
        tag = root.tag.lower()
        if hasattr(root, 'getchildren'):
            xmldict[tag] = []
            for elem in root.getchildren():
                subObject = parseXMLFrm(elem, formName, data, session, root)
                xmldict[tag].append(subObject)
        elif len(root) > 0:
            if len(root)==1:
                xmldict[tag] = parseXMLFrm(root[0], formName, data, session, root)
            else:
                xmldict[tag] = []
                for elem in root:
                    subObject = parseXMLFrm(elem, formName, data, session, root)
                    xmldict[tag].append(subObject)
    return xmldict

def existTempPage(name):
    """
    Проверка наличия  сохраненой копии преобразованной страницы
    """
    global TMP_PAGE_CAHE
    if TMP_PAGE_CAHE == None:
        TMP_PAGE_CAHE = {}
        return False
    if name in TMP_PAGE_CAHE:
        return True
    return False

def getTempPage(name, defoultValue=''):
    """
    Получить текст страницы, к которой уже обращались ранее после перезагрузки
    необходимо для ускорения работы, страница персится один раз, и сохраняется ,
    При повтороном обращении  вытаскивается сохраненая копия
    """
    global TMP_PAGE_CAHE
    if TMP_PAGE_CAHE.get(name) == None:
        return defoultValue, 'application/plain'
    res = TMP_PAGE_CAHE.get(name)
    return res.get("txt"), res.get("mime")


def setTempPage(name, html='', mime='application/plain'):
    """
    Сохранение  преобразованной страницы во временное хронилище (Словарь)
    """
    global TMP_PAGE_CAHE
    if TMP_PAGE_CAHE == None:
        TMP_PAGE_CAHE = {}
    TMP_PAGE_CAHE[f"{name}"] = {"txt": html, "mime": mime}


def getAttrQuery(request):
    """
    Преобразовать  входящие агрументы в словарь
    :param request:
    :return:
    """
    if request.method == 'POST':
        data = JSON_parse(request.data)
        data.update(request.args.to_dict())
    else:
        data = request.args.to_dict()
    return data


def sendCostumBin(pathFile):
    """
    Получить содержимое файлв с MIME типом
    """
    txt = ""
    mime = mimeType(pathFile)
    if txt == "":
        if path.isfile(pathFile):
            with open(pathFile, "rb") as f:
                return f.read(), mimeType(pathFile)
        else:
            # fpath = Path(__file__).absolute()
            fpath = path.dirname(Path(__file__).absolute())
            return f"File {pathFile} not found {path.dirname(Path(__file__).absolute())}{sep}  --{fpath}---", mimeType(
                ".txt")
    else:
        return txt, mime


def mimeType(pathFile):
    """
    Получение типа HTML контента, по  расширению  запрациваемой страницы
    """
    extList = {"py": "text/html", "psp": "text/html", "css": "text/css", "js": "application/x-javascript",
               "xml": "text/xml", "dtd": "text/xml", "txt": "text/plain", "inf": "text/plain",
               "nfo": "text/plain",
               "php": "text/plain", "html": "text/html", "csp": "text/html", "htm": "text/html",
               "shtml": "text/html",
               "shtm": "text/html", "stm": "text/html", "sht": "text/html", "sht": "text/html",
               "csp": "text/html",
               "frm": "text/html",
               "mac": "text/html", "cls": "text/html", "jpg": "image/jpeg", "cos": "text/html",
               "mpeg": "video/mpeg",
               "mpg": "video/mpeg", "mpe": "video/mpeg", "ai": "application/postscript", "zip": "application/zip",
               "zsh": "text/x-script.zsh", "x-png": "image/png", "xls": "application/x-excel",
               "xlm": "application/excel",
               "wav": "audio/x-wav", "txt": "text/plain", "tiff": "image/tiff", "tif": "image/x-tiff",
               "text": "text/plain",
               "swf": "application/x-shockwave-flash", "sprite": "application/x-sprite",
               "smil": "application/smil",
               "sh": "text/x-script.sh", "rtx": "text/richtext", "rtf": "text/richtext",
               "pyc": "application/x-bytecode.python",
               "png": "image/png", "pic": "image/pict", "mp3": "video/mpeg", "mp2": "video/mpeg",
               "movie": "video/x-sgi-movie",
               "mov": "video/quicktime", "mjpg": "video/x-motion-jpeg", "mime": "www/mime",
               "mif": "application/x-mif",
               "midi": "audio/midi", "js": "application/javascript", "jpeg": "image/jpeg", "jps": "image/x-jps",
               "jam": "audio/x-jam",
               "jav": "text/plain", "java": "text/x-java-source", "htm": "text/html", "html": "text/html",
               "gzip": "application/x-gzip", "gif": "image/gif", "gl": "video/gl", "csh": "text/x-script.csh",
               "css": "text/css", "bsh": "application/x-bsh", "bz": "application/x-bzip",
               "bz2": "application/x-bzip2",
               "c": "text/plain", "c++": "text/plain", "cat": "application/vnd.ms-pki.seccat", "cc": "text/plain",
               "htmls": "text/html", "bmp": "image/bmp", "bm": "image/bmp", "avi": "video/avi",
               "avs": "video/avs-video",
               "au": "audio/basic", "arj": "application/arj", "art": "image/x-jg", "asf": "video/x-ms-asf",
               "asm": "text/x-asm",
               "asp": "text/asp"}
    if "." in pathFile:
        ext = pathFile[pathFile.rfind('.') + 1:]
    else:
        ext = pathFile
    if ext in extList:
        return extList[ext]
    else:
        return "text/plain"





class XmlListConfig(list):
    def __init__(self, aList):
        for element in aList:
            if element:
                # treat like dict
                if len(element) == 1 or element[0].tag != element[1].tag:
                    self.append(XmlDictConfig(element))
                # treat like list
                elif element[0].tag == element[1].tag:
                    self.append(XmlListConfig(element))
            elif element.text:
                text = element.text.strip()
                if text:
                    self.append(text)


class XmlDictConfig(dict):
    '''
    Example usage:

    >>> tree = ET.parse('your_file.xml')
    >>> root = tree.getroot()
    >>> xmldict = XmlDictConfig(root)

    Or, if you want to use an XML string:

    >>> root = ET.XML(xml_string)
    >>> xmldict = XmlDictConfig(root)

    And then use xmldict for what it is... a dict.
    '''

    def __init__(self, parent_element):
        if parent_element.items():
            self.update(dict(parent_element.items()))
        for element in parent_element:
            if element:
                # treat like dict - we assume that if the first two tags
                # in a series are different, then they are all different.
                if len(element) == 1 or element[0].tag != element[1].tag:
                    aDict = XmlDictConfig(element)
                # treat like list - we assume that if the first two tags
                # in a series are the same, then the rest are the same.
                else:
                    # here, we put the list in dictionary; the key is the
                    # tag name the list elements all share in common, and
                    # the value is the list itself
                    aDict = {element[0].tag: XmlListConfig(element)}
                # if the tag has attributes, add those to the dict
                if element.items():
                    aDict.update(dict(element.items()))
                self.update({element.tag: aDict})
            # this assumes that if you've got an attribute in a tag,
            # you won't be having any text. This may or may not be a
            # good idea -- time will tell. It works for the way we are
            # currently doing XML configuration files...
            elif element.items():
                self.update({element.tag: dict(element.items())})
            # finally, if there are no child tags and no attributes, extract
            # the text
            else:
                self.update({element.tag: element.text})

