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
                
                
                var mainfrm_onclose = function(data){ }
                var mainfrm =  {
    "actionList": {},
    "caption": "Примеры использования контролов",
    "dataSetList": {},
    "formName": "main.frm",
    "id": "winc4d79780a3644c4a8fd5681706d8f94e",
    "items": [
        {
            "items": [
                {
                    "listeners": {
                        "click": function(){ mainfrm.onClickBtn(arguments); }
                    },
                    "mainForm": "winc4d79780a3644c4a8fd5681706d8f94e",
                    "mainFormName": "main.frm",
                    "text": "test",
                    "xtype": "button"
                },
                {
                    "id": "ctrl5a139eb15a487c66ef04b44509af8ba9",
                    "mainForm": "winc4d79780a3644c4a8fd5681706d8f94e",
                    "mainFormName": "main.frm",
                    "name": "MyTime",
                    "value": "Все компоненты смещены вправо",
                    "width": 250,
                    "xtype": "textfield"
                }
            ],
            "mainForm": "winc4d79780a3644c4a8fd5681706d8f94e",
            "mainFormName": "main.frm",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "winc4d79780a3644c4a8fd5681706d8f94e",
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
                
       
           mainfrm.onClickBtn = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("imput argument fun", arr);
              executeAction(this,"myAction", function() {
                  console.log("OK",getVar(this,'arr'));
              })
           }
       
    
                window.Win_mainfrm = Ext.create('Ext.Viewport',mainfrm);
                window.Win_mainfrm;
           });

        </script>
   </head>
   <body></body>
</html>
