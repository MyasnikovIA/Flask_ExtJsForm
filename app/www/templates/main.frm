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
                
                
                var mainfrm_onclose = function(data){ }
                var mainfrm =  {
    "actionList": {},
    "actionVarList": {
        "myAction": {
            "MyTime": {
                "default": "0",
                "src": "MyTime",
                "srctype": "ctrl"
            },
            "method": {
                "default": "0",
                "src": "method",
                "srctype": "var"
            }
        }
    },
    "caption": "Примеры использования контролов",
    "dataSetList": {},
    "formName": "main.frm",
    "id": "win665706ecc6f6f1488f3ede7935dac2ca",
    "items": [
        {
            "items": [
                {
                    "listeners": {
                        "click": function(){ mainfrm.onClickBtnGet(arguments); }
                    },
                    "mainForm": "win665706ecc6f6f1488f3ede7935dac2ca",
                    "mainFormName": "main.frm",
                    "text": "executeAction GET Query",
                    "xtype": "button"
                },
                {
                    "listeners": {
                        "click": function(){ mainfrm.onClickBtnPost(arguments); }
                    },
                    "mainForm": "win665706ecc6f6f1488f3ede7935dac2ca",
                    "mainFormName": "main.frm",
                    "text": "executeAction POST Query",
                    "xtype": "button"
                },
                {
                    "id": "ctrle67f076e73e81af15867cf5925fc4e73",
                    "mainForm": "win665706ecc6f6f1488f3ede7935dac2ca",
                    "mainFormName": "main.frm",
                    "name": "MyTime",
                    "value": "Все компоненты смещены вправо",
                    "width": 250,
                    "xtype": "textfield"
                }
            ],
            "mainForm": "win665706ecc6f6f1488f3ede7935dac2ca",
            "mainFormName": "main.frm",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win665706ecc6f6f1488f3ede7935dac2ca",
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
                
       
           mainfrm.onClickBtnGet = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("GET imput argument fun", arr);
              setVar(window.Win_mainfrm,'method','GET');
              executeAction(window.Win_mainfrm,"myAction", function() {
                  console.log("OK",getVar(window.Win_mainfrm,'arr'));
              })
           }
           mainfrm.onClickBtnPost = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("POST imput argument fun", arr);
              setVar(window.Win_mainfrm,'method','POST');
              executeAction(window.Win_mainfrm,"myAction", function(obj) {
                  console.log("obj",obj);
                  console.log("OK",getVar(window.Win_mainfrm,'arr'));
              },true); // <== признак отправки сообщения POST запросом
           }
       
    
           });

        </script>
   </head>
   <body></body>
</html>
