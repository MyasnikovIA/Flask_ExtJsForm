
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
    "id": "win8fdf01911af016d209964283cdd71669",
    "items": [
        {
            "height": "100%",
            "id": "ctrle526c23c3fce70c8c52cacc1c099d08d",
            "mainForm": "win8fdf01911af016d209964283cdd71669",
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
                    "id": "ctrl0ff70ebcb18a1dcddaf69d0b442bc196",
                    "listeners": {
                        "click": function(){ Examples_editFilefrm.clsForm() }
                    },
                    "mainForm": "win8fdf01911af016d209964283cdd71669",
                    "mainFormName": "Examples/editFile.frm",
                    "name": "fileinfo",
                    "region": "west",
                    "text": "Отмена",
                    "xtype": "button"
                },
                {
                    "id": "ctrlf798f8f865eed38332f1b335d2e52ce8",
                    "listeners": {
                        "click": function(){ Examples_editFilefrm.SaveForm() }
                    },
                    "mainForm": "win8fdf01911af016d209964283cdd71669",
                    "mainFormName": "Examples/editFile.frm",
                    "name": "fileinfo",
                    "region": "east",
                    "text": "Сохранить",
                    "xtype": "button"
                },
                {
                    "id": "ctrl6157907841eef2a73e6a3da4baf4dff1",
                    "listeners": {
                        "click": function(){ Examples_editFilefrm.SaveAndCloseForm() }
                    },
                    "mainForm": "win8fdf01911af016d209964283cdd71669",
                    "mainFormName": "Examples/editFile.frm",
                    "name": "fileinfo",
                    "region": "east",
                    "text": "Сохранить и закрыть",
                    "xtype": "button"
                }
            ],
            "layout": "border",
            "mainForm": "win8fdf01911af016d209964283cdd71669",
            "mainFormName": "Examples/editFile.frm",
            "region": "south",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win8fdf01911af016d209964283cdd71669",
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
       
    
                
           });
