
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
    "id": "win3c5d4784fde6c84998575da457b43a2d",
    "items": [
        {
            "height": "100%",
            "id": "ctrl104b4e41d011d22e980a930260b3e5b1",
            "mainForm": "win3c5d4784fde6c84998575da457b43a2d",
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
                    "id": "ctrl7de0f6b88177d49eedbff9d77c3a6539",
                    "listeners": {
                        "click": function(){ Examples_editFilefrm.clsForm() }
                    },
                    "mainForm": "win3c5d4784fde6c84998575da457b43a2d",
                    "mainFormName": "Examples/editFile.frm",
                    "name": "fileinfo",
                    "region": "west",
                    "text": "Отмена",
                    "xtype": "button"
                },
                {
                    "id": "ctrl51753eec8558769181d7c6011d197934",
                    "listeners": {
                        "click": function(){ Examples_editFilefrm.SaveForm() }
                    },
                    "mainForm": "win3c5d4784fde6c84998575da457b43a2d",
                    "mainFormName": "Examples/editFile.frm",
                    "name": "fileinfo",
                    "region": "east",
                    "text": "Сохранить",
                    "xtype": "button"
                },
                {
                    "id": "ctrl90858ea0a0170a67e3aef25cd912eff4",
                    "listeners": {
                        "click": function(){ Examples_editFilefrm.SaveAndCloseForm() }
                    },
                    "mainForm": "win3c5d4784fde6c84998575da457b43a2d",
                    "mainFormName": "Examples/editFile.frm",
                    "name": "fileinfo",
                    "region": "east",
                    "text": "Сохранить и закрыть",
                    "xtype": "button"
                }
            ],
            "layout": "border",
            "mainForm": "win3c5d4784fde6c84998575da457b43a2d",
            "mainFormName": "Examples/editFile.frm",
            "region": "south",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win3c5d4784fde6c84998575da457b43a2d",
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
