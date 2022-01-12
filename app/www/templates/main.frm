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
    "ServerPathQuery": [
        "main.frm"
    ],
    "actionList": {},
    "actionVarList": {},
    "caption": "Примеры использования контролов",
    "dataSetList": {},
    "dataSetVarList": {},
    "formName": "main.frm",
    "id": "wine74f8a7dc8c5aab3b56ceeaffd7f615f",
    "items": [
        {
            "mainForm": "wine74f8a7dc8c5aab3b56ceeaffd7f615f",
            "mainFormName": "main.frm",
            "text": 11111,
            "xtype": "button1"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "wine74f8a7dc8c5aab3b56ceeaffd7f615f",
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
