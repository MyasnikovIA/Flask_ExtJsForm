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
                
                DATA_SET_WebDesigner_mainfrm_DS_COMBO= new Ext.data.Store( {
    "autoLoad": true,
    "listeners": {
        "beforeload": function(store, operation, options){  this.getProxy().setExtraParam('elementName',getVar(this,'LPU','')); } 
    },
    "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
    "mainFormName": "WebDesigner/main.frm",
    "proxy": {
        "reader": {
            "root": "data",
            "type": "json"
        },
        "type": "ajax",
        "url": "request.php?Form=WebDesigner/main.frm&dataset=DS_COMBO"
    },
    "records": []
} );
      
                var MENU_WebDesigner_mainfrm_popupMenuDomTree= Ext.create('Ext.menu.Menu',{"name": "popupMenuDomTree"
, "items": [{"text": "dddddddd"
, "handler": function(){ console.log('menu clicked'); }}, {"text": "print"
, "menu": [{"text": "22222"
, "handler": function(){ console.log('menu clicked'); }}, {"text": "333333"
, "handler": function(){  console.log('menu clicked'); }}]}]})
                var WebDesigner_mainfrm_onclose = function(data){ }
                var WebDesigner_mainfrm =  {
    "actionList": {},
    "caption": "Редактор HTML страниц",
    "dataSetList": {
        "DS_COMBO": DATA_SET_WebDesigner_mainfrm_DS_COMBO
    },
    "formName": "WebDesigner/main.frm",
    "id": "win11a263aa8f6de3d4625b9873562bf239",
    "items": [
        {
            "items": [
                {
                    "html": "\n             File\n             \n        ",
                    "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                    "mainFormName": "WebDesigner/main.frm",
                    "menu": [
                        {
                            "html": "Load form\n        ",
                            "listeners": {
                                "click": function(){  }
                            },
                            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                            "mainFormName": "WebDesigner/main.frm",
                            "xtype": "button"
                        }
                    ],
                    "xtype": "button"
                },
                "->",
                {
                    "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                    "mainFormName": "WebDesigner/main.frm",
                    "value": "",
                    "xtype": "textfield"
                }
            ],
            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
            "mainFormName": "WebDesigner/main.frm",
            "region": "north",
            "xtype": "toolbar"
        },
        {
            "collapsible": true,
            "items": [
                {
                    "autoScroll": true,
                    "height": "40%",
                    "items": [
                        {
                            "height": 25,
                            "id": "ctrlbd1d15f07ddf9b70434bbc39de59b517",
                            "listeners": {
                                "specialkey": function(){  }
                            },
                            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                            "mainFormName": "WebDesigner/main.frm",
                            "name": "filterDomTreeView",
                            "region": "north",
                            "value": "",
                            "width": "100%",
                            "xtype": "textfield"
                        },
                        {
                            "height": "80%",
                            "id": "ctrl1f2724631fae494c6439503afb5021d0",
                            "listeners": {
                                "itemclick": function(){  WebDesigner_mainfrm.getPropertyList(arguments);   },
                                "itemcontextmenu": function(){ let arr = [].slice.call(arguments); arr[4].stopEvent(); WebDesigner_mainfrm.onPopupMenu(arguments);; showPopupMenu(this,'popupMenuDomTree',arr[4].getX(),arr[4].getY()); return false; }
                            },
                            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                            "mainFormName": "WebDesigner/main.frm",
                            "name": "domTree",
                            "region": "center",
                            "rootVisible": false,
                            "store": {
                                "fields": [],
                                "root": {
                                    "children": [
                                        {
                                            "data": "{'aa':11}",
                                            "leaf": true,
                                            "text": "Ext.Viewport"
                                        }
                                    ],
                                    "expanded": true
                                }
                            },
                            "xtype": "treepanel"
                        }
                    ],
                    "layout": "border",
                    "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                    "mainFormName": "WebDesigner/main.frm",
                    "minSize": 100,
                    "region": "north",
                    "split": true,
                    "width": "80%",
                    "xtype": "panel"
                },
                {
                    "autoScroll": true,
                    "height": "61%",
                    "items": [
                        {
                            "activeTab": 0,
                            "items": [
                                {
                                    "bodyPadding": 0,
                                    "items": [
                                        {
                                            "height": 25,
                                            "id": "ctrlc5d10cff428d87598986e64547e33527",
                                            "listeners": {
                                                "specialkey": function(){  }
                                            },
                                            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                                            "mainFormName": "WebDesigner/main.frm",
                                            "name": "filterDomTreeView",
                                            "region": "north",
                                            "value": "",
                                            "width": "100%",
                                            "xtype": "textfield"
                                        },
                                        {
                                            "autoHeight": true,
                                            "columns": [
                                                {
                                                    "dataIndex": "text",
                                                    "header": "key",
                                                    "width": 142
                                                },
                                                {
                                                    "dataIndex": "value",
                                                    "header": "value",
                                                    "width": 200
                                                }
                                            ],
                                            "dataset": "DS_COMBO",
                                            "height": "100%",
                                            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                                            "mainFormName": "WebDesigner/main.frm",
                                            "region": "center",
                                            "store": DATA_SET_WebDesigner_mainfrm_DS_COMBO,
                                            "title": "Пользователи",
                                            "width": "100%",
                                            "xtype": "grid"
                                        }
                                    ],
                                    "layout": "border",
                                    "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                                    "mainFormName": "WebDesigner/main.frm",
                                    "title": "Property"
                                },
                                {
                                    "bodyPadding": 0,
                                    "items": [
                                        {
                                            "height": 25,
                                            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                                            "mainFormName": "WebDesigner/main.frm",
                                            "region": "north",
                                            "value": "",
                                            "width": "100%",
                                            "xtype": "textfield"
                                        }
                                    ],
                                    "layout": "border",
                                    "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                                    "mainFormName": "WebDesigner/main.frm",
                                    "title": "Style"
                                }
                            ],
                            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                            "mainFormName": "WebDesigner/main.frm",
                            "region": "center",
                            "width": "100%",
                            "xtype": "tabpanel"
                        }
                    ],
                    "layout": "border",
                    "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                    "mainFormName": "WebDesigner/main.frm",
                    "minSize": 100,
                    "region": "north",
                    "split": true,
                    "width": "100%",
                    "xtype": "panel"
                }
            ],
            "layout": "border",
            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
            "mainFormName": "WebDesigner/main.frm",
            "region": "west",
            "split": true,
            "width": 350,
            "xtype": "panel"
        },
        {
            "collapsible": true,
            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
            "mainFormName": "WebDesigner/main.frm",
            "region": "south",
            "split": true,
            "title": "222test",
            "width": 150
        },
        {
            "collapsible": true,
            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
            "mainFormName": "WebDesigner/main.frm",
            "region": "east",
            "split": true,
            "title": "33test",
            "width": 150
        },
        {
            "items": [
                {
                    "items": [
                        {
                            "height": "100%",
                            "html": "<iframe id=\"TabBodyEdit\" src=\"/Tutorial/Grid.frm\" width=\"100%\" height=\"100%\" layout=\"fit\" mainForm=\"win11a263aa8f6de3d4625b9873562bf239\" />\n        ",
                            "id": "TabBodyEdit",
                            "layout": "fit",
                            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                            "mainFormName": "WebDesigner/main.frm",
                            "src": "/Tutorial/Grid.frm",
                            "width": "100%"
                        }
                    ],
                    "layout": "card",
                    "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                    "mainFormName": "WebDesigner/main.frm",
                    "title": "Edit"
                },
                {
                    "items": [
                        {
                            "height": "100%",
                            "html": "<iframe id=\"TabBodyView\" width=\"100%\" height=\"100%\" mainForm=\"win11a263aa8f6de3d4625b9873562bf239\" />",
                            "id": "TabBodyView",
                            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                            "mainFormName": "WebDesigner/main.frm",
                            "width": "100%"
                        }
                    ],
                    "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
                    "mainFormName": "WebDesigner/main.frm",
                    "title": "View"
                }
            ],
            "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
            "mainFormName": "WebDesigner/main.frm",
            "region": "center",
            "xtype": "tabpanel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win11a263aa8f6de3d4625b9873562bf239",
    "mainFormName": "WebDesigner/main.frm",
    "mainList": {
        "popupMenuDomTree": MENU_WebDesigner_mainfrm_popupMenuDomTree
    },
    "parentEvent": {},
    "renderTo": Ext.getBody(),
    "retuen_object": {},
    "vars_return": {}

//[[%INPETDATA%]] 
 } ;
                if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
                    if (typeof(window.ExtObj["FormsObject"]['WebDesigner/main.frm']) !== 'function') {
                       WebDesigner_mainfrm['parentEvent'] = window.ExtObj["FormsObject"]['WebDesigner/main.frm'];
                       delete window.ExtObj["FormsObject"]['WebDesigner/main.frm'];
                    }
                }
                if ( typeof(WebDesigner_mainfrm['vars']) !=='undefined') WebDesigner_mainfrm['vars'] = {};
                WebDesigner_mainfrm["vars"]//=[[%DataVars%]]
                
       
           WebDesigner_mainfrm.listeners["afterrender"] = function() {

           }

           WebDesigner_mainfrm.getPropertyList = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log( arr[1].data );
           }

           WebDesigner_mainfrm.onPopupMenu = function(arguments) {
              let arr = [].slice.call(arguments);
              data = arr[1].data
              console.log(data);
           }

       
    
                let Win_WebDesigner_mainfrm = Ext.create('Ext.Viewport',WebDesigner_mainfrm);
                Win_WebDesigner_mainfrm;
           });

        </script>
   </head>
   <body></body>
</html>
