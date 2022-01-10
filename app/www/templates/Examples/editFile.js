
           Ext.onReady(function() {
                if (typeof(window.Win_mainfrm) === 'undefined') window.Win_mainfrm = "";
                
                
                var Examples_editFilefrm_onclose = function(data){ }
                var Examples_editFilefrm =  {
    "actionList": {},
    "actionVarList": {
        "GET_FILE_TEXT": {
            "bodyText": {
                "default": "",
                "src": "bodyText",
                "srctype": "ctrl"
            },
            "editFile": {
                "default": "",
                "src": "editFile",
                "srctype": "var"
            },
            "isEdit": {
                "default": "false",
                "src": "isEdit",
                "srctype": "var"
            }
        },
        "SET_FILE_TEXT": {
            "bodyText": {
                "default": "",
                "src": "bodyText",
                "srctype": "ctrl"
            },
            "editFile": {
                "default": "",
                "src": "editFile",
                "srctype": "var"
            },
            "isEdit": {
                "default": "false",
                "src": "isEdit",
                "srctype": "var"
            }
        }
    },
    "caption": "Редактировать файл",
    "dataSetList": {},
    "dataSetVarList": {},
    "formName": "Examples/editFile.frm",
    "fullscreen": true,
    "id": "win85101613ab533761dca2a124cee79ddf",
    "items": [
        {
            "height": "100%",
            "id": "ctrlf3207c40bb8ba64f1e1a5bc0cc093a15",
            "mainForm": "win85101613ab533761dca2a124cee79ddf",
            "mainFormName": "Examples/editFile.frm",
            "name": "bodyText",
            "region": "center",
            "width": "100%",
            "xtype": "textareafield"
        },
        {
            "height": 25,
            "items": [
                {
                    "id": "ctrl8ab35a61c3831bc6cc93963d38d1a219",
                    "listeners": {
                        "click": function(){ Examples_editFilefrm.clsForm() }
                    },
                    "mainForm": "win85101613ab533761dca2a124cee79ddf",
                    "mainFormName": "Examples/editFile.frm",
                    "name": "fileinfo",
                    "region": "west",
                    "text": "Отмена",
                    "xtype": "button"
                },
                {
                    "id": "ctrl81245912ca3e854b1dd11edb09c51581",
                    "listeners": {
                        "click": function(){ Examples_editFilefrm.SaveForm() }
                    },
                    "mainForm": "win85101613ab533761dca2a124cee79ddf",
                    "mainFormName": "Examples/editFile.frm",
                    "name": "fileinfo",
                    "region": "east",
                    "text": "Сохранить",
                    "xtype": "button"
                },
                {
                    "id": "ctrle75f3e4bb9a342d4e6289436e2db9a51",
                    "listeners": {
                        "click": function(){ Examples_editFilefrm.SaveAndCloseForm() }
                    },
                    "mainForm": "win85101613ab533761dca2a124cee79ddf",
                    "mainFormName": "Examples/editFile.frm",
                    "name": "fileinfo",
                    "region": "east",
                    "text": "Сохранить и закрыть",
                    "xtype": "button"
                }
            ],
            "layout": "border",
            "mainForm": "win85101613ab533761dca2a124cee79ddf",
            "mainFormName": "Examples/editFile.frm",
            "region": "south",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win85101613ab533761dca2a124cee79ddf",
    "mainFormName": "Examples/editFile.frm",
    "mainList": {},
    "modal": true,
    "parentEvent": {},
    "renderTo": Ext.getBody(),
    "retuen_object": {},
    "vars_return": {}

//[[%INPETDATA%]] 
 } ;
                if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
                    if (typeof(window.ExtObj["FormsObject"]['Examples/editFile.frm']) !== 'function') {
                       Examples_editFilefrm['parentEvent'] = window.ExtObj["FormsObject"]['Examples/editFile.frm'];
                       delete window.ExtObj["FormsObject"]['Examples/editFile.frm'];
                    }
                }
                if ( typeof(Examples_editFilefrm['vars']) !=='undefined') Examples_editFilefrm['vars'] = {};
                Examples_editFilefrm["vars"]//=[[%DataVars%]]
                window.Win_Examples_editFilefrm = Ext.create('Ext.window.Window',Examples_editFilefrm);
                window.Win_Examples_editFilefrm.show();
                
       
          console.log( getVar(window.Win_Examples_editFilefrm,"editFile") );
          executeAction(window.Win_Examples_editFilefrm,"GET_FILE_TEXT");

          Examples_editFilefrm.clsForm = function() {
             close(window.Win_Examples_editFilefrm,{});
          }
          Examples_editFilefrm.SaveForm = function(_collb) {
             executeAction(window.Win_Examples_editFilefrm,"SET_FILE_TEXT",_collb,true);
          }
          Examples_editFilefrm.SaveAndCloseForm = function() {
             Examples_editFilefrm.SaveForm(function(){
                Examples_editFilefrm.clsForm();
             });
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
