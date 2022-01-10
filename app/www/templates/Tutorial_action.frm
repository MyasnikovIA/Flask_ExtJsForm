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
                
                
                var Tutorial_actionfrm_onclose = function(data){ }
                var Tutorial_actionfrm =  {
    "actionList": {},
    "actionVarList": {
        "myAction": {
            "MyTime": {
                "default": "0",
                "src": "MyTime",
                "srctype": "ctrl"
            }
        }
    },
    "caption": "Примеры использования контролов",
    "dataSetList": {},
    "dataSetVarList": {},
    "formName": "Tutorial/action.frm",
    "id": "wine4173aa12412af542abafd22b27ddcf9",
    "items": [
        {
            "items": [
                {
                    "listeners": {
                        "click": function(){ Tutorial_actionfrm.onClickBtnGet(arguments); }
                    },
                    "mainForm": "wine4173aa12412af542abafd22b27ddcf9",
                    "mainFormName": "Tutorial/action.frm",
                    "text": "executeAction GET Query",
                    "xtype": "button"
                },
                {
                    "listeners": {
                        "click": function(){ Tutorial_actionfrm.onClickBtnPost(arguments); }
                    },
                    "mainForm": "wine4173aa12412af542abafd22b27ddcf9",
                    "mainFormName": "Tutorial/action.frm",
                    "text": "executeAction POST Query",
                    "xtype": "button"
                },
                {
                    "id": "ctrld5a74fd80f304db65bf2e75d8881a411",
                    "mainForm": "wine4173aa12412af542abafd22b27ddcf9",
                    "mainFormName": "Tutorial/action.frm",
                    "name": "MyTime",
                    "value": "Все компоненты смещены вправо",
                    "width": 250,
                    "xtype": "textfield"
                }
            ],
            "mainForm": "wine4173aa12412af542abafd22b27ddcf9",
            "mainFormName": "Tutorial/action.frm",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "wine4173aa12412af542abafd22b27ddcf9",
    "mainFormName": "Tutorial/action.frm",
    "mainList": {},
    "parentEvent": {},
    "renderTo": Ext.getBody(),
    "retuen_object": {},
    "vars_return": {}

//[[%INPETDATA%]] 
 } ;
                if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
                    if (typeof(window.ExtObj["FormsObject"]['Tutorial/action.frm']) !== 'function') {
                       Tutorial_actionfrm['parentEvent'] = window.ExtObj["FormsObject"]['Tutorial/action.frm'];
                       delete window.ExtObj["FormsObject"]['Tutorial/action.frm'];
                    }
                }
                if ( typeof(Tutorial_actionfrm['vars']) !=='undefined') Tutorial_actionfrm['vars'] = {};
                Tutorial_actionfrm["vars"]//=[[%DataVars%]]
                window.Win_Tutorial_actionfrm = Ext.create('Ext.Viewport',Tutorial_actionfrm);
                window.Win_Tutorial_actionfrm;
                
       
           Tutorial_actionfrm.onClickBtnGet = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("GET imput argument fun", arr);
              executeAction(window.Win_Tutorial_actionfrm,"myAction", function() {
                  console.log("OK",getVar(window.Win_Tutorial_actionfrm,'arr'));
              })
           }
           Tutorial_actionfrm.onClickBtnPost = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("POST imput argument fun", arr);
              executeAction(window.Win_Tutorial_actionfrm,"myAction", function(obj) {
                  console.log("obj",obj);
                  console.log("OK",getVar(window.Win_Tutorial_actionfrm,'arr'));
              },true); // <== признак отправки сообщения POST запросом
           }
       
    
                
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
