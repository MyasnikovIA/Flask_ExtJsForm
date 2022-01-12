
           Ext.onReady(function() {
                if (typeof(window.Win_mainfrm) === 'undefined') window.Win_mainfrm = "";
                DATA_SET_Examples_file_managerfrm_DS_TREE_LEFT= new Ext.data.TreeStore( {
    "autoLoad": false,
    "listeners": {
        "beforeload": function(store, operation, options){  this.getProxy().setExtraParam('searchItemLeft',getValue(window.Win_Examples_file_managerfrm,'searchItemLeft','')); this.getProxy().setExtraParam('selectFileLeft',getVar(window.Win_Examples_file_managerfrm,'selectFileLeft','')); } 
    },
<<<<<<< HEAD
    "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
    "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
    "mainFormName": "Examples/file_manager.frm",
    "proxy": {
        "reader": {
            "root": "data",
            "type": "json"
        },
        "type": "ajax"
    },
    "records": []
} );
       DATA_SET_Examples_file_managerfrm_DS_TREE= new Ext.data.TreeStore( {
    "autoLoad": false,
    "listeners": {
        "beforeload": function(store, operation, options){  this.getProxy().setExtraParam('searchItem',getValue(window.Win_Examples_file_managerfrm,'searchItem','')); this.getProxy().setExtraParam('selectFile',getVar(window.Win_Examples_file_managerfrm,'selectFile','')); } 
    },
<<<<<<< HEAD
    "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
    "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
    "mainFormName": "Examples/file_manager.frm",
    "proxy": {
        "reader": {
            "root": "data",
            "type": "json"
        },
        "type": "ajax"
    },
    "records": []
} );
      
                var MENU_Examples_file_managerfrm_popUpFile= Ext.create('Ext.menu.Menu',{"name": "popUpFile"
, "popupobject": "GridMain"
, "items": [{"name": "popNewFile"
, "text": "Создать новый файл"
, "handler": function(){ Examples_file_managerfrm.CreateNewTextFile(); }}, {"name": "popNewDir"
, "text": "Создать новый каталог"
, "handler": function(){ Examples_file_managerfrm.CreateNewDir(); }}, {"name": "popEditFile"
, "text": "Редактировать"
, "handler": function(){ Examples_file_managerfrm.editFile(arguments); }}, {"name": "popDelFile"
, "text": "Удалить"
, "handler": function(){ Examples_file_managerfrm.editFile(arguments); }}]})
                var Examples_file_managerfrm_onclose = function(data){ }
                var Examples_file_managerfrm =  {
    "ServerPathQuery": [
        "http",
        "192.168.15.200:9091",
        "Examples/file_manager.frm"
    ],
    "actionList": {},
    "actionVarList": {
        "GET_FILE_INFO": {
            "info": {
                "default": "",
                "src": "info",
                "srctype": "var"
            },
            "selectFileLeft": {
                "default": "",
                "src": "selectFileLeft",
                "srctype": "var"
            }
        }
    },
    "caption": "Примеры использования контролов",
    "dataSetList": {
        "DS_TREE": DATA_SET_Examples_file_managerfrm_DS_TREE,
        "DS_TREE_LEFT": DATA_SET_Examples_file_managerfrm_DS_TREE_LEFT
    },
    "dataSetVarList": {
        "DS_TREE": {
            "searchItem": {
                "default": "",
                "src": "searchItem",
                "srctype": "ctrl"
            },
            "selectFile": {
                "default": "",
                "src": "selectFile",
                "srctype": "var"
            }
        },
        "DS_TREE_LEFT": {
            "searchItemLeft": {
                "default": "",
                "src": "searchItemLeft",
                "srctype": "ctrl"
            },
            "selectFileLeft": {
                "default": "",
                "src": "selectFileLeft",
                "srctype": "var"
            }
        }
    },
    "formName": "Examples/file_manager.frm",
    "fullscreen": true,
<<<<<<< HEAD
    "id": "wina002e01d077d785d6b18af3f293009e1",
    "items": [
        {
            "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
    "id": "wine0bec75ee45b2df7e8b1076004c0869b",
    "items": [
        {
            "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
            "mainFormName": "Examples/file_manager.frm"
        },
        {
            "autoScroll": true,
            "height": "40%",
            "items": [
                {
                    "items": [
                        {
                            "height": 25,
<<<<<<< HEAD
                            "id": "ctrl44e4e7f7338c714b2d864091f84e3fb9",
                            "listeners": {
                                "specialkey": function(){ Examples_file_managerfrm.onSearchTreeItemLeft(arguments); }
                            },
                            "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
                            "id": "ctrle3f865b46de4940744182b2722eb5fce",
                            "listeners": {
                                "specialkey": function(){ Examples_file_managerfrm.onSearchTreeItemLeft(arguments); }
                            },
                            "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "searchItemLeft",
                            "value": "",
                            "width": "100%",
                            "xtype": "textfield"
                        },
                        {
<<<<<<< HEAD
                            "id": "ctrlce450bed4efd61ba9519fa4964245a5e",
                            "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
                            "id": "ctrl4477acc3d265bb34e52c8393f60420ed",
                            "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "absPathLeft",
                            "text": "_",
                            "xtype": "label"
                        }
                    ],
<<<<<<< HEAD
                    "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
                    "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
                    "mainFormName": "Examples/file_manager.frm",
                    "region": "north",
                    "title": "Search",
                    "xtype": "fieldset"
                },
                {
                    "dataset": "DS_TREE_LEFT",
                    "height": "80%",
<<<<<<< HEAD
                    "id": "ctrl26f9c4a5f169b90dba11813a1014a25e",
=======
                    "id": "ctrl354e1b36164ac0505c8fb9fb400c1a9c",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
                    "listeners": {
                        "itemclick": function(){  Examples_file_managerfrm.getAbsPathLeft(arguments); },
                        "itemcontextmenu": function(){ let arr = [].slice.call(arguments); arr[4].stopEvent(); Examples_file_managerfrm.onPOP(arguments); showPopupMenu(window.Win_Examples_file_managerfrm,'popUpFile',arr[4].getX(),arr[4].getY()); return false; },
                        "itemdblclick": function(){  Examples_file_managerfrm.getPropertyListLeft(arguments); }
                    },
<<<<<<< HEAD
                    "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
                    "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
                    "mainFormName": "Examples/file_manager.frm",
                    "name": "fileTreeLeft",
                    "region": "center",
                    "rootVisible": false,
                    "store": DATA_SET_Examples_file_managerfrm_DS_TREE_LEFT,
                    "xtype": "treepanel"
                }
            ],
            "layout": "border",
<<<<<<< HEAD
            "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
            "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
            "mainFormName": "Examples/file_manager.frm",
            "minSize": 100,
            "region": "west",
            "split": true,
            "width": "50%",
            "xtype": "panel"
        },
        {
            "autoScroll": true,
            "height": "40%",
<<<<<<< HEAD
            "id": "ctrl2513940896e3a558c480543e9a4c59ea",
=======
            "id": "ctrlce332b4f3aa1fe7c87b2522246a6792b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
            "items": [
                {
                    "items": [
                        {
                            "height": 25,
<<<<<<< HEAD
                            "id": "ctrl8f361f31329f3ab09b1cff9f995b10e3",
                            "listeners": {
                                "specialkey": function(){ Examples_file_managerfrm.onSearchTreeItem(arguments); }
                            },
                            "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
                            "id": "ctrl5b23fb643ba279735779fadcb60e9116",
                            "listeners": {
                                "specialkey": function(){ Examples_file_managerfrm.onSearchTreeItem(arguments); }
                            },
                            "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "searchItem",
                            "value": "",
                            "width": "100%",
                            "xtype": "textfield"
                        },
                        {
<<<<<<< HEAD
                            "id": "ctrle7f72b7a10357bf3373f33915a5ed3f4",
                            "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
                            "id": "ctrld1c7e628bd353d66bfc7e0fa482301b4",
                            "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "absPath",
                            "text": "_",
                            "xtype": "label"
                        }
                    ],
<<<<<<< HEAD
                    "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
                    "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
                    "mainFormName": "Examples/file_manager.frm",
                    "region": "north",
                    "title": "Search",
                    "xtype": "fieldset"
                },
                {
                    "dataset": "DS_TREE",
                    "height": "80%",
<<<<<<< HEAD
                    "id": "ctrl1e8c42ab0454435b03588bb3746c2f06",
=======
                    "id": "ctrl23255cce1c1ba91fdc98221006e22cef",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
                    "listeners": {
                        "itemclick": function(){  Examples_file_managerfrm.getAbsPath(arguments); },
                        "itemcontextmenu": function(){ let arr = [].slice.call(arguments); arr[4].stopEvent(); Examples_file_managerfrm.onPOP(arguments); showPopupMenu(window.Win_Examples_file_managerfrm,'popUpFile',arr[4].getX(),arr[4].getY()); return false; },
                        "itemdblclick": function(){  Examples_file_managerfrm.getPropertyList(arguments); }
                    },
<<<<<<< HEAD
                    "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
                    "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
                    "mainFormName": "Examples/file_manager.frm",
                    "name": "domTree",
                    "region": "center",
                    "rootVisible": false,
                    "store": DATA_SET_Examples_file_managerfrm_DS_TREE,
                    "xtype": "treepanel"
                }
            ],
            "layout": "border",
<<<<<<< HEAD
            "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
            "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
            "mainFormName": "Examples/file_manager.frm",
            "minSize": 100,
            "name": "demoBody",
            "region": "center",
            "split": true,
            "width": "50%",
            "xtype": "panel"
        },
        {
            "collapsible": true,
            "height": "10%",
            "items": [
                {
<<<<<<< HEAD
                    "id": "ctrl85eda0bfacceaf73c994afc7af078b6c",
                    "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
                    "id": "ctrl7695637bdd167c52f6b0f5ec4bcf8acb",
                    "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
                    "mainFormName": "Examples/file_manager.frm",
                    "name": "fileinfo",
                    "region": "south",
                    "text": "",
                    "xtype": "label"
                }
            ],
<<<<<<< HEAD
            "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
            "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
            "mainFormName": "Examples/file_manager.frm",
            "region": "south",
            "split": true,
            "title": "Информация о файле",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
<<<<<<< HEAD
    "mainForm": "wina002e01d077d785d6b18af3f293009e1",
=======
    "mainForm": "wine0bec75ee45b2df7e8b1076004c0869b",
>>>>>>> a6e3421... Добавил кодирование UTF-8 при получении контента с другого стенда
    "mainFormName": "Examples/file_manager.frm",
    "mainList": {
        "popUpFile": MENU_Examples_file_managerfrm_popUpFile
    },
    "parentEvent": {},
    "renderTo": Ext.getBody(),
    "retuen_object": {},
    "vars_return": {}

//[[%INPETDATA%]] 
 } ;
                if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
                    if (typeof(window.ExtObj["FormsObject"]['Examples/file_manager.frm']) !== 'function') {
                       Examples_file_managerfrm['parentEvent'] = window.ExtObj["FormsObject"]['Examples/file_manager.frm'];
                       delete window.ExtObj["FormsObject"]['Examples/file_manager.frm'];
                    }
                }
                if ( typeof(Examples_file_managerfrm['vars']) !=='undefined') Examples_file_managerfrm['vars'] = {};
                Examples_file_managerfrm["vars"]//=[[%DataVars%]]
                window.Win_Examples_file_managerfrm = Ext.create('Ext.Viewport',Examples_file_managerfrm);
                window.Win_Examples_file_managerfrm;
                
       
           Examples_file_managerfrm.SelectFileObject = {};
           // ПКМ
           Examples_file_managerfrm.onPOP = function(arguments) {
              let arr = [].slice.call(arguments);
              let pop = getControl(window.Win_Examples_file_managerfrm,"popUpFile");
              // setVisible(window.Win_Examples_file_managerfrm,pop.items.items[3], false);
              // setDisable(window.Win_Examples_file_managerfrm,pop.items.items[3], true);
              setVisible(window.Win_Examples_file_managerfrm,getControl(window.Win_Examples_file_managerfrm,"popDelFile"), false);
              let data = arr[1].data;
              Examples_file_managerfrm.SelectFileObject = data;
              if (data['isFile'] === true) {
                  setVisible(window.Win_Examples_file_managerfrm,getControl(window.Win_Examples_file_managerfrm,"popEditFile"), true);
                  setVisible(window.Win_Examples_file_managerfrm,getControl(window.Win_Examples_file_managerfrm,"popNewDir"), false);
                  setVisible(window.Win_Examples_file_managerfrm,getControl(window.Win_Examples_file_managerfrm,"popNewFile"), false);
              } else {
                  setVisible(window.Win_Examples_file_managerfrm,getControl(window.Win_Examples_file_managerfrm,"popEditFile"), false);
                  setVisible(window.Win_Examples_file_managerfrm,getControl(window.Win_Examples_file_managerfrm,"popNewDir"), true);
                  setVisible(window.Win_Examples_file_managerfrm,getControl(window.Win_Examples_file_managerfrm,"popNewFile"), true);
              }
           }
           Examples_file_managerfrm.editFile = function(arguments) {
              if (typeof(Examples_file_managerfrm.SelectFileObject['abspath']) === "undefined"){
                return;
              }
              let fileName = Examples_file_managerfrm.SelectFileObject['abspath'];
              setVar(window.Win_Examples_file_managerfrm,"isEdit",true);
              openForm(window.Win_Examples_file_managerfrm,'Examples/editFile.frm',true,{
                    width: 800,
                    height: 600,
                    vars:{editFile:fileName},
                    onclose:function(mod){
                       console.log('OK',mod);
                    }
               });
           }

           Examples_file_managerfrm.getAbsPathLeft = function(arguments) {
              let arr = [].slice.call(arguments);
              setCaption(window.Win_Examples_file_managerfrm,"absPathLeft",arr[1].data['abspath']);
              Examples_file_managerfrm.SelectFileObject = arr[1].data;
              if (arr[1].data['isFile'] === true) {
                 setVar(window.Win_Examples_file_managerfrm,"selectFileLeft",arr[1].data['abspath']);
                 executeAction(window.Win_Examples_file_managerfrm,"GET_FILE_INFO", function(){
                    setCaption(window.Win_Examples_file_managerfrm,"fileinfo", JSON.stringify(getVar(window.Win_Examples_file_managerfrm,"info")));
                 })
              }
           }

           Examples_file_managerfrm.getAbsPath = function(arguments) {
              let arr = [].slice.call(arguments);
              setCaption(window.Win_Examples_file_managerfrm,"absPath",arr[1].data['abspath']);
              Examples_file_managerfrm.SelectFileObject = arr[1].data;
              if (arr[1].data['isFile'] === true) {
                 setVar(window.Win_Examples_file_managerfrm,"selectFileLeft",arr[1].data['abspath']);
                 executeAction(window.Win_Examples_file_managerfrm,"GET_FILE_INFO", function(){
                    setCaption(window.Win_Examples_file_managerfrm,"fileinfo", JSON.stringify(getVar(window.Win_Examples_file_managerfrm,"info")));
                 })
              }
           }

           Examples_file_managerfrm.getPropertyListLeft = function(arguments) {
              let arr = [].slice.call(arguments);
              setVar(window.Win_Examples_file_managerfrm,"selectFileLeft",arr[1].data);
              refreshDataSet(window.Win_Examples_file_managerfrm,"DS_TREE_LEFT");
           }

           Examples_file_managerfrm.getPropertyList = function(arguments) {
              let arr = [].slice.call(arguments);
              setVar(window.Win_Examples_file_managerfrm,"selectFile",arr[1].data);
              refreshDataSet(window.Win_Examples_file_managerfrm,"DS_TREE");
           }

           Examples_file_managerfrm.onSearchTreeItem = function(arguments) {
              let arr = [].slice.call(arguments);
              if (arr[1].getKey() == arr[1].ENTER) {
                  refreshDataSet(window.Win_Examples_file_managerfrm,"DS_TREE",function(rec){
                        console.log("rec",rec)
                  })
              }
           }

           Examples_file_managerfrm.onSearchTreeItemLeft = function(arguments) {
              let arr = [].slice.call(arguments);
              if (arr[1].getKey() == arr[1].ENTER) {
                  refreshDataSet(window.Win_Examples_file_managerfrm,"DS_TREE_LEFT",function(rec){
                        console.log("rec",rec)
                  })
              }
           }

           Examples_file_managerfrm.CreateNewTextFile = function() {
               if (Examples_file_managerfrm.SelectFileObject['isFile'] !== true) {
                    Ext.MessageBox.prompt("Укажите имя файла","Имя файла",function(btn, text) {
                       // дописать Action  создания нового файла
                    });
               }
           }
           Examples_file_managerfrm.CreateNewDir = function() {
               if (Examples_file_managerfrm.SelectFileObject['isFile'] !== true) {
                    Ext.MessageBox.prompt("Укажите имя каталога","Имя каталога",function(btn, text) {
                       // дописать Action  создания нового каталога
                    });
               }
           }

           refreshDataSet(window.Win_Examples_file_managerfrm,"DS_TREE_LEFT");
           refreshDataSet(window.Win_Examples_file_managerfrm,"DS_TREE");
       
    
                
    var css = `
      .ico-test { background-color:#352788; width:15px; height:15px; background-image:none !important; }
    `,
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
