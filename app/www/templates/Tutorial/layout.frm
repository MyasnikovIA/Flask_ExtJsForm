<!DOCTYPE html>
<html>
   <head>
        <meta charset="utf-8"/>
        <link href="/lib/ExtJS_6.0.0/theme-classic-all.css" rel="stylesheet" />
        <script type="text/javascript" src="/lib/ExtJS_6.0.0/ext-all.js"></script>
        <script type="text/javascript" src="/js/common.js"></script>
        <script type = "text/javascript">
             document.addEventListener('contextmenu', event => event.preventDefault());
             
           Ext.onReady(function() {
                if (typeof(window.Win_mainfrm) === 'undefined') window.Win_mainfrm = "";
                
                
                var Tutorial_layoutfrm_onclose = function(data){ }
                var Tutorial_layoutfrm =  {
    "actionList": {},
    "actionVarList": {},
    "caption": "Примеры использования контролов",
    "dataSetList": {},
    "dataSetVarList": {},
    "formName": "Tutorial/layout.frm",
    "id": "winffb57dd119b2e268f28b45d08b2a5720",
    "items": [
        {
            "collapsible": true,
            "items": [
                {
                    "class": "x-panel-header",
                    "mainForm": "winffb57dd119b2e268f28b45d08b2a5720",
                    "mainFormName": "Tutorial/layout.frm"
                }
            ],
            "mainForm": "winffb57dd119b2e268f28b45d08b2a5720",
            "mainFormName": "Tutorial/layout.frm",
            "region": "north",
            "width": 150
        },
        {
            "collapsible": true,
            "mainForm": "winffb57dd119b2e268f28b45d08b2a5720",
            "mainFormName": "Tutorial/layout.frm",
            "region": "west",
            "title": "Панель слева",
            "width": 150
        },
        {
            "collapsible": true,
            "mainForm": "winffb57dd119b2e268f28b45d08b2a5720",
            "mainFormName": "Tutorial/layout.frm",
            "region": "south",
            "split": true,
            "title": "Снизу",
            "width": 150
        },
        {
            "collapsible": true,
            "mainForm": "winffb57dd119b2e268f28b45d08b2a5720",
            "mainFormName": "Tutorial/layout.frm",
            "region": "east",
            "split": true,
            "title": "Справа",
            "width": 150
        },
        {
            "items": [
                {
                    "html": " adfsadfasdf \n        ",
                    "mainForm": "winffb57dd119b2e268f28b45d08b2a5720",
                    "mainFormName": "Tutorial/layout.frm",
                    "title": 11111111
                },
                {
                    "html": " adfsadfasdf \n        ",
                    "mainForm": "winffb57dd119b2e268f28b45d08b2a5720",
                    "mainFormName": "Tutorial/layout.frm",
                    "title": 22222222
                },
                {
                    "html": " adfsadfasdf \n        ",
                    "mainForm": "winffb57dd119b2e268f28b45d08b2a5720",
                    "mainFormName": "Tutorial/layout.frm",
                    "title": 33333333
                },
                {
                    "html": " adfsadfasdf \n    ",
                    "mainForm": "winffb57dd119b2e268f28b45d08b2a5720",
                    "mainFormName": "Tutorial/layout.frm",
                    "title": 44444444
                }
            ],
            "mainForm": "winffb57dd119b2e268f28b45d08b2a5720",
            "mainFormName": "Tutorial/layout.frm",
            "region": "center",
            "xtype": "tabpanel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "winffb57dd119b2e268f28b45d08b2a5720",
    "mainFormName": "Tutorial/layout.frm",
    "mainList": {},
    "parentEvent": {},
    "renderTo": Ext.getBody(),
    "retuen_object": {},
    "vars_return": {}

//[[%INPETDATA%]] 
 } ;
                if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
                    if (typeof(window.ExtObj["FormsObject"]['Tutorial/layout.frm']) !== 'function') {
                       Tutorial_layoutfrm['parentEvent'] = window.ExtObj["FormsObject"]['Tutorial/layout.frm'];
                       delete window.ExtObj["FormsObject"]['Tutorial/layout.frm'];
                    }
                }
                if ( typeof(Tutorial_layoutfrm['vars']) !=='undefined') Tutorial_layoutfrm['vars'] = {};
                Tutorial_layoutfrm["vars"]//=[[%DataVars%]]
                window.Win_Tutorial_layoutfrm = Ext.create('Ext.Viewport',Tutorial_layoutfrm);
                window.Win_Tutorial_layoutfrm;
                
                
    var css = ``,
    head = document.head || document.getElementsByTagName('head')[0],
    style = document.createElement('style');
    head.appendChild(style);
    style.type = 'text/css';
    if (style.styleSheet) {
      style.styleSheet.cssText = css;
    } else {
      style.appendChild(document.createTextNode(css));
    }
    
           });

        </script>
   </head>
   <body></body>
</html>
