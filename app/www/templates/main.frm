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
    "id": "win55fac4cc48ed8f7256a812a711f77921",
    "items": [
        {
            "items": [
                {
                    "listeners": {
                        "click": function(){ mainfrm.onClickBtnGet5001(arguments) }
                    },
                    "mainForm": "win55fac4cc48ed8f7256a812a711f77921",
                    "mainFormName": "main.frm",
                    "text": "Send 5001",
                    "xtype": "button"
                },
                {
                    "listeners": {
                        "click": function(){ mainfrm.onClickBtnGet9091(arguments) }
                    },
                    "mainForm": "win55fac4cc48ed8f7256a812a711f77921",
                    "mainFormName": "main.frm",
                    "text": "Send 9091",
                    "xtype": "button"
                },
                {
                    "listeners": {
                        "click": function(){ mainfrm.onClickBtnGet90912(arguments) }
                    },
                    "mainForm": "win55fac4cc48ed8f7256a812a711f77921",
                    "mainFormName": "main.frm",
                    "text": "Send onClickBtnGet90912",
                    "xtype": "button"
                }
            ],
            "mainForm": "win55fac4cc48ed8f7256a812a711f77921",
            "mainFormName": "main.frm",
            "region": "center"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win55fac4cc48ed8f7256a812a711f77921",
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
                
       
           mainfrm.onClickBtnGet5001 = function(arguments) {
              let arr = [].slice.call(arguments);
              openForm(window.Win_mainfrm,"http://192.168.15.200:5001/main.frm",true)
           }
           mainfrm.onClickBtnGet9091 = function(arguments) {
              let arr = [].slice.call(arguments);
              openForm(window.Win_mainfrm,"http://192.168.15.200:5001/main.frm",true)
           }
           mainfrm.onClickBtnGet90912 = function(arguments) {
              let arr = [].slice.call(arguments);
              openForm(window.Win_mainfrm,"http://192.168.15.200:9091/Examples/file_manager.frm")
           }
       
    
                
           });

        </script>
   </head>
   <body></body>
</html>
