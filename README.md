# Flask_ExtJsForm
Конвертор XML форм в HTML страницы с использованием фрэймворка ExtJS  

<br> **Установка**r:  https://youtu.be/eUePsfeHuwg
<br>[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/eUePsfeHuwg/0.jpg)](https://www.youtube.com/watch?v=eUePsfeHuwg)


**Для чего эта разработка**
Разработка была сделана для управщения создания приложений на базе фрэймворка ExtJS.

Работа платформы основана на преобразовании XML формата формы в HTML страницу.  
Все атрибуты XML тэга перемещаются в атрибуты объекта. Все вложенные объекты перемещаются в блок children.
После того, как платформа переработает XML файл, резултат выгрузится в HTML файл в каталоге ***"app\www\templates"***

**Примеры применения компонентов распологаются в каталоге "app\Forms\Tutorial"**

**Пример:**
```xml
Исходный файл формы: 
<div caption="Примеры использования контролов" >
    <cmpPanel text="Expander component"  title='Центральная панель' region="center" margin='5 5 5 5'>
        <cmpButton text="menu">
            <div text='New User Register' scale="medium" handler="alert(444);"/>
            <div text='Login' scale="medium" handler="alert(555);"/>
        </cmpButton>
    </cmpPanel>
</div>
```
```html
// результат переработки платформой
<!DOCTYPE html>
<html>
   <head>
        <meta charset="utf-8"/>
        <link href="/lib/ExtJS_6.2.0/classic/theme-classic/resources/theme-classic-all.css" rel="stylesheet" />
        <script type="text/javascript" src="/lib/ExtJS_6.2.0/ext-all.js"></script>
        <script type="text/javascript" src="/js/common.js"></script>
        <script type = "text/javascript">
             document.addEventListener('contextmenu', event => event.preventDefault());
             
           Ext.onReady(function() {
                if (typeof(window.Win_mainfrm) === 'undefined') window.Win_mainfrm = "";
                
                
                var main17frm_onclose = function(data){ }
                var main17frm =  {
    "ServerPathQuery": [
        "main17.frm"
    ],
    "actionList": {},
    "actionVarList": {},
    "caption": "Примеры использования контролов",
    "dataSetList": {},
    "dataSetVarList": {},
    "formName": "main17.frm",
    "id": "win4ab3ae037b609d31efa8d86177c497ba",
    "items": [
        {
            "items": [
                {
                    "mainForm": "win4ab3ae037b609d31efa8d86177c497ba",
                    "mainFormName": "main17.frm",
                    "menu": [
                        {
                            "handler": "alert(444);",
                            "mainForm": "win4ab3ae037b609d31efa8d86177c497ba",
                            "mainFormName": "main17.frm",
                            "scale": "medium",
                            "text": "New User Register"
                        },
                        {
                            "handler": "alert(555);",
                            "mainForm": "win4ab3ae037b609d31efa8d86177c497ba",
                            "mainFormName": "main17.frm",
                            "scale": "medium",
                            "text": "Login"
                        }
                    ],
                    "text": "menu",
                    "xtype": "button"
                }
            ],
            "mainForm": "win4ab3ae037b609d31efa8d86177c497ba",
            "mainFormName": "main17.frm",
            "margin": "5 5 5 5",
            "region": "center",
            "text": "Expander component",
            "title": "Центральная панель",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win4ab3ae037b609d31efa8d86177c497ba",
    "mainFormName": "main17.frm",
    "mainList": {},
    "parentEvent": {},
    "renderTo": Ext.getBody(),
    "retuen_object": {},
    "vars_return": {}

,"ServerPathQuery": ["main17.frm"] 
 } ;
                if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
                    if (typeof(window.ExtObj["FormsObject"]['main17.frm']) !== 'function') {
                       main17frm['parentEvent'] = window.ExtObj["FormsObject"]['main17.frm'];
                       delete window.ExtObj["FormsObject"]['main17.frm'];
                    }
                }
                if ( typeof(main17frm['vars']) !=='undefined') main17frm['vars'] = {};
                main17frm["vars"]//=[[%DataVars%]]
                window.Win_main17frm = Ext.create('Ext.Viewport',main17frm);
                window.Win_main17frm;
                
                
           });

        </script>
   </head>
   <body></body>
</html>
```
<br/> На формах XML можно указать блок с Python скриптом (пример на форме Tutorial/action.frm)

```xml
<div caption="Примеры использования контролов" >
    <cmpScript>
       <![CDATA[
           Form.onClickBtnGet = function(arguments) {
              // команда JS запускающая выполнение Python скрипта на стороне сервера
              executeAction("myAction", function() {
                  console.log("MyTime  ",getVar('MyTime')); // Функция срабатывает после получения результата
              })
           }
       ]]>
    </cmpScript>
    <cmpPanel>
        <cmpButton text="Кнопка запуска Python скрипра, на стороне сервера" onclick="Form.onClickBtnGet(arguments);"/>
    </cmpPanel>
    <!-- Блок Python кода (возвращает инициализированные переменные MyTime) --> 
    <cmpAction name="myAction" >
        <![CDATA[
           from datetime import datetime
           now = datetime.now()
           MyTime = now.strftime("%m/%d/%Y, %H:%M:%S")
        ]]>
        <items name="MyTime" src="MyTime" srctype="var"  default="0"/>
    </cmpAction>
</div>
```

<br/> На формах XML можно указать блок с Python скриптом, возвращающий массив data (пример на форме Tutorial/dataSet.frm)

```xml
<div caption="Примеры использования cmpDataSet" >
    <cmpScript>
       <![CDATA[
           Form.runDataSet = function(){
               setVar("DATE_FROM","test111"); // инициализация переменных
               setVar("MyEdit","test222");
               // JS запуск процесса получения данных из DataSet 
               refreshDataSet('DS_GRID', function() {
                  alert('данные получены');
               });
           }
       ]]>
    </cmpScript>

    <!-- Блок Python кода (возвращает data массив и добавляет результат в компонент cmpGrid) -->
    <cmpDataSet name="DS_GRID" activateoncreate="false">
       <![CDATA[
           LPU = "66666"
           data = []
           data.append({'value':10,'text':f" Из переменной DATE_FROM: {DATE_FROM}" })
           data.append({'value':20,'text':f" Из переменной MyEdit: {MyEdit}" })
           data.append({'value':30,'text':"------" })
       ]]>
       <items name="LPU" src="LPU" srctype="session"  default="4444"/>
       <items name="DATE_FROM" src="DATE_FROM" srctype="var" default="111"/>
       <items name="MyEdit" src="MyEdit" srctype="var"/>
    </cmpDataSet>

    <cmpPanel text="Expander component"  title='Центральная панель' region="north" margin='5 5 5 5'>
        <cmpButton text="Запуск скрипта Python на стороне сервера" onclick="Form.runDataSet()" />
    </cmpPanel>

    <cmpGrid title="Пользователи" height="250" width="500" fields="value,text" autoHeight="true"   dataset="DS_GRID">
       <colum  caption='поле 3'  width="330"/>
       <colum  caption='поле 4'  width="670"/>
    </cmpGrid>

</div>
```

**Назначение файлов и директорий в проекте**
```
app\app.py - Скрипт сервера Flask (точка запуска проекта)
app\getform.py - Парсер Frm в HTML
app\Components - Содержит описание компонентов, стилей и библиотек для работы с этими компонентами
app\Forms      - Содержит формы для преобразования парсером
app\UserForms  - Содержит фрагменты XML для переопределения основных форм
app\requirements.txt - содержит список подключаемых модулей, которые необходимо инсталлировать
build.bat - скрипт для сборки Docker контейнера с проектом
run.bat - скрипт для запуска собранного Docker контейнера с проектом
save_images.bat - скрипт для выгрузки архива Docker контейнера
commit_images.bat - скрипт для фиксации состояния работающего  Docker контейнера
```
**Запуск платформы в Docker контейнере**
```
1) Скачать репозиторий локально;
2) Запустить Docker (авторизоватся);
3) Запустить скрипт для сборки Docker контейнера "build.bat"(подождать окончания сборки);
4) Запустите контейнер через скрипт "run.bat". Полсе запуска через 10 секунд откроется браузер 
   или перейти по адресу   http://127.0.0.1:9091/
```
Развертывание  платформы в Docker:  https://youtu.be/IsNmCKiFTuY
<br>[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/IsNmCKiFTuY/0.jpg)](https://www.youtube.com/watch?v=IsNmCKiFTuY)
<br>
<br>


**Запуск платформы локально**
```
1) Скачать репозиторий локально;
2) Перейти в директорию платформы "\Flask_D3_v2\app"
3) В командной строке установить виртуальное окружение cmd:virtualenv env
                                                       cmd:python -m venv env
4) Активировать виртуальное окружение cmd:env\Scripts\activate.bat
5) Установить зависимости проекта cmd:pip install -r requirements.txt
6) Запустить сервер cmd:python app.py 5001
    5001 - порт на котором запустился сервер
	Запустить браузер и перейти по адресу http://127.0.0.1:5001/
``` 

Запуск платформы локально:  https://youtu.be/LV5cnsGonZU
<br>[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/LV5cnsGonZU/0.jpg)](https://www.youtube.com/watch?v=LV5cnsGonZU)
<br>
<br>



<!--

```
Вынрузить зависимости проекта
------------------------------------
pip install -r requirements.txt 
------------------------------------
```

**Возможности платформы** <br/>
```
Платформа работает на микрофреймворке Flask.
Основная логика конвертации XML документа в HTML верстку  реализовано в файле getform.py
Логика описана в процедурном стиле, и нуждается в оптимизации производительности. Данный продукт
написан в качестве визуализации концепции микросервесной распределенной архитектуре.     
 
1) Есть возможность одновременно подключатся к разным БД из списка (Oracle, PostgreSQL, Sqlite).
   подключений может быть не ограниченное количество. Каждое подключение имеет свой псевдоним,
   по которому  идет определения для какой БД был написан SQL запрос на форме (Action, DataSet)  
2) Есть возможность обращается к внешним серверам из браузера(в фоновом режиме).
   Пример:
             openD3Form('http://192.168.15.200:5000/index.html', true);  
  
3) Реализовано использование всех компонентов из каталога "Components" в HTML страницах
```

**Flask_D3_client (Android) --- в разработке!!!!** <br/>
android\Flask_D3_client\app\build\outputs\apk\debug\app-debug.apk - браузер клинт D3 под андроид

Если в JS коде присутствует объект  с именем Android значит в качестве браузера выступает **"D3extClient"** 
<img src="https://github.com/MyasnikovIA/Flask_D3_v2/blob/main/img/scr.png?raw=true"/>
<img src="https://github.com/MyasnikovIA/Flask_D3_v2/blob/main/img/scrAndroid.png?raw=true"/>
Команды для работы с докером
```
docker save -o F:\DockerProject\Flask_Python_3.8\Flask_001(13.10.2020).tar python3.6_flask:flask_001     - выгразить контейнер в файл 
docker load -i F:\DockerProject\Flask_Python_3.8\Flask_001(13.10.2020).tar

-------------------------------------------------------------
COMMIT IMAGE
-------------------------------------------------------------
docker ps
docker images
docker commit d02a9d321c4b python3.8_flask:flask_001
-------------------------------------------------------------
```
-->
<h1>Проект находится в стадии поиска оптимальной архитектуры</h1>