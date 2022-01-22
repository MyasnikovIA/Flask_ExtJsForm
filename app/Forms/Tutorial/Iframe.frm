<div caption="Редактор HTML страниц">
    <!--
         https://docs.sencha.com/extjs/6.2.0/classic/Ext.container.Viewport.html
         https://coderoad.ru/5353037/ExtJS-%D0%BF%D0%B0%D0%BD%D0%B5%D0%BB%D1%8C-%D0%B8%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2-%D0%BD%D0%B5-%D0%BE%D1%82%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B0%D0%B5%D1%82%D1%81%D1%8F-%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE
    -->

    <cmpScript>
       <![CDATA[
           var ContentEditorDocumeIframe;
           Form.loadEmploePage = function(pathPage) {
                ContentEditorDocumeIframe = document.getElementById('TabBodyEdit');
                console.log(ContentEditorDocumeIframe);
                /*
                ContentEditorDocume = (ContentEditorDocumeIframe.contentWindow) ? ContentEditorDocumeIframe.contentWindow : (ContentEditorDocumeIframe.contentDocument.document) ? ContentEditorDocumeIframe.contentDocument.document : ContentEditorDocumeIframe.contentDocument;
                ContentEditorDocume.document.designMode = 'off';
                ContentEditorDocumeIframe.src = "";
                ContentEditorDocumeIframe.onload = function() {
                    ContentEditorDocume = (ContentEditorDocumeIframe.contentWindow) ? ContentEditorDocumeIframe.contentWindow : (ContentEditorDocumeIframe.contentDocument.document) ? ContentEditorDocumeIframe.contentDocument.document : ContentEditorDocumeIframe.contentDocument;
                    ContentEditorDocume.document.designMode = 'off';
                    // ContentEditorDocume.document.write(   getTextUrl('report.html') +  getTextUrl('contextmenu.html') );
                    if (pathPage.length > 0) {
                        ContentEditorDocume.document.write(getTextUrl(pathPage));
                    } else {
                        if (Chrome) {
                          ContentEditorDocume.document.write(`<html><head></head><body></body></html>`);
                        }else{
                          ContentEditorDocume.document.write(`<html><head></head><body style="height:100%;width:100%;" ></body></html>`);
                        }
                    }
                    if (ContentEditorDocume.document.addEventListener) {
                        ContentEditorDocume.document.addEventListener('contextmenu', function(event) {
                            event.preventDefault();
                        }, false);
                    } else {
                        ContentEditorDocume.document.attachEvent('oncontextmenu', function() {
                            window.event.returnValue = false;
                        });
                    }
                    window.loadScriptIframe("component/component.js?"+getRandomInt(999999), 3000, ContentEditorDocume).then(function() {}, function(error) {
                        console.log(error);
                    });
                    window.loadCSSIFrame("component/component.css?"+getRandomInt(999999), 3000, ContentEditorDocume).then(function() {}, function(error) {
                        console.log(error);
                    });
                    TmpElementSrc = ContentEditorDocume.document.getElementsByTagName('html')[0];
                    var elementsSrc = TmpElementSrc.querySelectorAll('*');
                    body = elementsSrc;
                    for (var i = 0; i < body.length; i++) {
                        if (!body[i].getAttribute("DeletTag")) {
                            InitAttributesObject(body[i]);
                        }
                    }
                    reloadDOMtree();
                }
                */
            }


           Form.onclickItem = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log(arr);
           }
          // Form.onRender = function(arguments) {
          //   //onafterrender="Form.onRender();"
          //    Ext.Msg.alert('Success!', 'We have been rendered');
          // }

          Form.afterrender = function(){
             alert(2)
          }

          Ext.create('Ext.window.Window', {
             id : 'modalVin',
             title: 'Hello',
             height: 200,
             width: 400,
             layout: 'fit',
             bodyPadding: 15,
             constrain: true,
             html: 'Ext JS is here!'
         })

         Form.loadEmploePage('temp.html');
       ]]>
    </cmpScript>


    <cmpDataSet name="DS_COMBO" activateoncreate="true">
         <![CDATA[
             data = []
             data.append({'value':10,'text':"aaaa" })
             data.append({'value':20,'text':"fsdfsdfsd" })
             data.append({'value':30,'text':"------" })
         ]]>
         <items name="LPU" src="LPU" srctype="session"/>
    </cmpDataSet>



     <!-- Меню (верхнее) -->
     <cmpToolbar region="north" >
        <cmpButton>
             File
             <cmpButton onclick="">Load form</cmpButton>
        </cmpButton>
        <cmpRight/>
        <cmpTextField  value="" />
    </cmpToolbar>


    <!-- левая панель -->
    <cmpPanel region="west" collapsible="true" width="350"  split="true" layout="border">
        <!-- панель дом дерева-->
        <cmpPanel region="north" height="40%" split="true" width="80%" minSize="100" autoScroll="true" layout="border">
            <cmpTextField name="filterDomTreeView" value="" region="north" onspecialkey=""  height="25" width="100%"/>
            <cmpTreePanel rootVisible="false" onitemclick=" console.log(arguments);  "  height="80%" onitemcontextmenu="Form.onclickItem(arguments)"  >
                <item>Ext.Viewport</item>
            </cmpTreePanel>
        </cmpPanel>

        <!-- панель свойств выбранного элемента-->
        <cmpPanel region="north" height="61%" split="true" width="100%" minSize="100" autoScroll="true" layout="border">
            <cmptabpanel region="center" activeTab="0" width="100%"  >
                <item title="Property" bodyPadding="0" layout="border">
                    <cmpTextField name="filterDomTreeView" value="" region="north" onspecialkey=""  height="25"   width="100%"/>
                    <cmpGrid title="Пользователи" height="100%"  width="100%"  autoHeight="true"  dataset="DS_COMBO">
                         <colum field='text'  caption='key'  width="142"/>
                         <colum field='value' caption='value'  width="200"/>
                    </cmpGrid>
                </item>
                <item title="Style" bodyPadding="0" layout="border">
                     <cmpTextField  value="" region="north" height="25" width="100%"/>
                 </item>
            </cmptabpanel>
        </cmpPanel>
    </cmpPanel>

    <item region="south" collapsible="true" width="150" title="222test"  split="true"></item>
    <item region="east" collapsible="true" width="150" title="33test"  split="true"></item>
    <cmpTabpanel region="center">
        <item title="Edit" layout="card">
            <iframe id="TabBodyEdit" src="/Tutorial/Grid.frm"  width="100%" height="100%" layout="fit"></iframe>
        </item>
        <item title="View"> <iframe id="TabBodyView" width="100%" height="100%" ></iframe></item>
    </cmpTabpanel>
</div>
