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
                
                
                var Tutorial_OpenStreetMap1frm_onclose = function(data){ }
                var Tutorial_OpenStreetMap1frm =  {
    "ServerPathQuery": [
        "Tutorial/OpenStreetMap1.frm"
    ],
    "actionList": {},
    "actionVarList": {},
    "caption": "Примеры использования контролов",
    "dataSetList": {},
    "dataSetVarList": {},
    "formName": "Tutorial/OpenStreetMap1.frm",
    "id": "win9fab401d2ddf45b547bd8f2e2ecb3e56",
    "items": [
        {
            "collapsible": true,
            "items": [
                {
                    "class": "x-panel-header",
                    "mainForm": "win9fab401d2ddf45b547bd8f2e2ecb3e56",
                    "mainFormName": "Tutorial/OpenStreetMap1.frm"
                }
            ],
            "mainForm": "win9fab401d2ddf45b547bd8f2e2ecb3e56",
            "mainFormName": "Tutorial/OpenStreetMap1.frm",
            "region": "north",
            "width": 150
        },
        {
            "collapsible": true,
            "mainForm": "win9fab401d2ddf45b547bd8f2e2ecb3e56",
            "mainFormName": "Tutorial/OpenStreetMap1.frm",
            "region": "west",
            "title": "Панель слева",
            "width": 150
        },
        {
            "collapsible": true,
            "mainForm": "win9fab401d2ddf45b547bd8f2e2ecb3e56",
            "mainFormName": "Tutorial/OpenStreetMap1.frm",
            "region": "south",
            "split": true,
            "title": "Снизу",
            "width": 150
        },
        {
            "collapsible": true,
            "mainForm": "win9fab401d2ddf45b547bd8f2e2ecb3e56",
            "mainFormName": "Tutorial/OpenStreetMap1.frm",
            "region": "east",
            "split": true,
            "title": "Справа",
            "width": 150
        },
        {
            "items": [
                {
                    "activeTab": 0,
                    "items": [
                        {
                            "bodyPadding": 10,
                            "html": "\n                fasdfsadfsa\n                asdfasdf\n                safdasdf\n            \n            ",
                            "mainForm": "win9fab401d2ddf45b547bd8f2e2ecb3e56",
                            "mainFormName": "Tutorial/OpenStreetMap1.frm",
                            "title": "tab1"
                        },
                        {
                            "bodyPadding": 10,
                            "html": "A simple tab",
                            "mainForm": "win9fab401d2ddf45b547bd8f2e2ecb3e56",
                            "mainFormName": "Tutorial/OpenStreetMap1.frm",
                            "title": "tab2"
                        },
                        {
                            "bodyPadding": 10,
                            "html": "A simple tab",
                            "items": [
                                {
                                    "height": "100%",
                                    "html": "<iframe src=\"index.html\" width=\"100%\" height=\"100%\" mainForm=\"win9fab401d2ddf45b547bd8f2e2ecb3e56\" />\n            ",
                                    "mainForm": "win9fab401d2ddf45b547bd8f2e2ecb3e56",
                                    "mainFormName": "Tutorial/OpenStreetMap1.frm",
                                    "src": "index.html",
                                    "width": "100%"
                                }
                            ],
                            "layout": "card",
                            "mainForm": "win9fab401d2ddf45b547bd8f2e2ecb3e56",
                            "mainFormName": "Tutorial/OpenStreetMap1.frm",
                            "title": "tab2"
                        }
                    ],
                    "mainForm": "win9fab401d2ddf45b547bd8f2e2ecb3e56",
                    "mainFormName": "Tutorial/OpenStreetMap1.frm",
                    "margin": "3 0 15 0",
                    "region": "center",
                    "width": "100%",
                    "xtype": "tabpanel"
                }
            ],
            "mainForm": "win9fab401d2ddf45b547bd8f2e2ecb3e56",
            "mainFormName": "Tutorial/OpenStreetMap1.frm",
            "region": "center",
            "xtype": "osm"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win9fab401d2ddf45b547bd8f2e2ecb3e56",
    "mainFormName": "Tutorial/OpenStreetMap1.frm",
    "mainList": {},
    "parentEvent": {},
    "renderTo": Ext.getBody(),
    "retuen_object": {},
    "vars_return": {}

//[[%INPETDATA%]] 
 } ;
                if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
                    if (typeof(window.ExtObj["FormsObject"]['Tutorial/OpenStreetMap1.frm']) !== 'function') {
                       Tutorial_OpenStreetMap1frm['parentEvent'] = window.ExtObj["FormsObject"]['Tutorial/OpenStreetMap1.frm'];
                       delete window.ExtObj["FormsObject"]['Tutorial/OpenStreetMap1.frm'];
                    }
                }
                if ( typeof(Tutorial_OpenStreetMap1frm['vars']) !=='undefined') Tutorial_OpenStreetMap1frm['vars'] = {};
                Tutorial_OpenStreetMap1frm["vars"]//=[[%DataVars%]]
                window.Win_Tutorial_OpenStreetMap1frm = Ext.create('Ext.Viewport',Tutorial_OpenStreetMap1frm);
                window.Win_Tutorial_OpenStreetMap1frm;
                
       

       
    
                
           });

        </script>
   </head>
   <body></body>
</html>
