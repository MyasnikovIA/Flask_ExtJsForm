
           Ext.onReady(function() {
                if (typeof(window.Win_mainfrm) === 'undefined') window.Win_mainfrm = "";
                
                
                var mainfrm_onclose = function(data){ }
                var mainfrm =  {
    "ServerPathQuery": [
        "http",
        "192.168.15.200:5001",
        "main.frm"
    ],
    "actionList": {},
    "actionVarList": {},
    "caption": "Примеры использования контролов",
    "dataSetList": {},
    "dataSetVarList": {},
    "formName": "main.frm",
    "id": "wine05a36fbffdfb47c2376a263c4e5143c",
    "items": [
        {
            "items": [
                {
                    "listeners": {
                        "click": function(){ mainfrm.onClickBtnGet5001(arguments) }
                    },
                    "mainForm": "wine05a36fbffdfb47c2376a263c4e5143c",
                    "mainFormName": "main.frm",
                    "text": "Send 5001",
                    "xtype": "button"
                },
                {
                    "listeners": {
                        "click": function(){ mainfrm.onClickBtnGet9091(arguments) }
                    },
                    "mainForm": "wine05a36fbffdfb47c2376a263c4e5143c",
                    "mainFormName": "main.frm",
                    "text": "Send 9091",
                    "xtype": "button"
                },
                {
                    "listeners": {
                        "click": function(){ mainfrm.onClickBtnGet90912(arguments) }
                    },
                    "mainForm": "wine05a36fbffdfb47c2376a263c4e5143c",
                    "mainFormName": "main.frm",
                    "text": "Send onClickBtnGet90912",
                    "xtype": "button"
                }
            ],
            "mainForm": "wine05a36fbffdfb47c2376a263c4e5143c",
            "mainFormName": "main.frm",
            "region": "center"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "wine05a36fbffdfb47c2376a263c4e5143c",
    "mainFormName": "main.frm",
    "mainList": {},
    "modal": true,
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
                window.Win_mainfrm = Ext.create('Ext.window.Window',mainfrm);
                window.Win_mainfrm.show();
                
       
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
              openForm(window.Win_mainfrm,"http://192.168.15.200:5001/Examples/file_manager.frm",true)
           }
       
    
                
           });
