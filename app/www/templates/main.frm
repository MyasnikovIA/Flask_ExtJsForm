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
    "caption": "Примеры использования контролов",
    "dataSetList": {},
    "formName": "main.frm",
    "id": "wina41f6bb758b992643cb50aca4db72575",
    "items": [
        {
            "items": [
                {
                    "listeners": {
                        "click": function(){ mainfrm.onClickBtn(arguments); }
                    },
                    "mainForm": "wina41f6bb758b992643cb50aca4db72575",
                    "mainFormName": "main.frm",
                    "text": "test",
                    "xtype": "button"
                },
                {
                    "id": "ctrlb3b526bd8d841999be70f7ca311bff67",
                    "mainForm": "wina41f6bb758b992643cb50aca4db72575",
                    "mainFormName": "main.frm",
                    "name": "MyTime",
                    "value": "Все компоненты смещены вправо",
                    "width": 250,
                    "xtype": "textfield"
                }
            ],
            "mainForm": "wina41f6bb758b992643cb50aca4db72575",
            "mainFormName": "main.frm",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "wina41f6bb758b992643cb50aca4db72575",
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
              executeAction(this,"myAction", function(rec) {
                  console.log("rec",rec);
              })
           }
       
    
                window.Win_mainfrm = Ext.create('Ext.Viewport',mainfrm);
                window.Win_mainfrm;
           });

        </script>
   </head>
   <body></body>
</html>
