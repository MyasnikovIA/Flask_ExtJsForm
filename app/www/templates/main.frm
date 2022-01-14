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
                
                
                var mainfrm_onclose = function(data){ }
                var mainfrm =  {
    "ServerPathQuery": [
        "main.frm"
    ],
    "actionList": {},
    "actionVarList": {},
    "caption": "Примеры использования контролов",
    "dataSetList": {},
    "dataSetVarList": {},
    "formName": "main.frm",
    "id": "winae2926b327a3ed8ed1e7082331fae8df",
    "items": [
        {
            "collapsible": true,
            "items": [
                {
                    "class": "x-panel-header",
                    "mainForm": "winae2926b327a3ed8ed1e7082331fae8df",
                    "mainFormName": "main.frm"
                }
            ],
            "mainForm": "winae2926b327a3ed8ed1e7082331fae8df",
            "mainFormName": "main.frm",
            "region": "north",
            "width": 150
        },
        {
            "collapsible": true,
            "mainForm": "winae2926b327a3ed8ed1e7082331fae8df",
            "mainFormName": "main.frm",
            "region": "west",
            "title": "Панель слева",
            "width": 150
        },
        {
            "collapsible": true,
            "mainForm": "winae2926b327a3ed8ed1e7082331fae8df",
            "mainFormName": "main.frm",
            "region": "south",
            "split": true,
            "title": "Снизу",
            "width": 150
        },
        {
            "collapsible": true,
            "mainForm": "winae2926b327a3ed8ed1e7082331fae8df",
            "mainFormName": "main.frm",
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
                            "mainForm": "winae2926b327a3ed8ed1e7082331fae8df",
                            "mainFormName": "main.frm",
                            "title": "tab1"
                        },
                        {
                            "bodyPadding": 10,
                            "html": "A simple tab",
                            "mainForm": "winae2926b327a3ed8ed1e7082331fae8df",
                            "mainFormName": "main.frm",
                            "title": "tab2"
                        },
                        {
                            "bodyPadding": 10,
                            "html": "A simple tab",
                            "items": [
                                {
                                    "height": "100%",
                                    "html": "<iframe src=\"index.html\" width=\"100%\" height=\"100%\" mainForm=\"winae2926b327a3ed8ed1e7082331fae8df\" />\n            ",
                                    "mainForm": "winae2926b327a3ed8ed1e7082331fae8df",
                                    "mainFormName": "main.frm",
                                    "src": "index.html",
                                    "width": "100%"
                                }
                            ],
                            "layout": "card",
                            "mainForm": "winae2926b327a3ed8ed1e7082331fae8df",
                            "mainFormName": "main.frm",
                            "title": "tab2"
                        }
                    ],
                    "mainForm": "winae2926b327a3ed8ed1e7082331fae8df",
                    "mainFormName": "main.frm",
                    "margin": "3 0 15 0",
                    "region": "center",
                    "width": "100%",
                    "xtype": "tabpanel"
                }
            ],
            "mainForm": "winae2926b327a3ed8ed1e7082331fae8df",
            "mainFormName": "main.frm",
            "region": "center",
            "xtype": "osm"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "winae2926b327a3ed8ed1e7082331fae8df",
    "mainFormName": "main.frm",
    "mainList": {},
    "parentEvent": {},
    "renderTo": Ext.getBody(),
    "retuen_object": {},
    "vars_return": {}

//[[%INPETDATA%]] 
 } ;
                if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
                    if (typeof(window.ExtObj["FormsObject"]['main.frm']) !== 'function') {
                       mainfrm['parentEvent'] = window.ExtObj["FormsObject"]['main.frm'];
                       delete window.ExtObj["FormsObject"]['main.frm'];
                    }
                }
                if ( typeof(mainfrm['vars']) !=='undefined') mainfrm['vars'] = {};
                mainfrm["vars"]//=[[%DataVars%]]
                window.Win_mainfrm = Ext.create('Ext.Viewport',mainfrm);
                window.Win_mainfrm;
                
       

       
    
                
           });

        </script>
   </head>
   <body></body>
</html>
