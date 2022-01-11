
           Ext.onReady(function() {
                if (typeof(window.Win_mainfrm) === 'undefined') window.Win_mainfrm = "";
                DATA_SET_Examples_file_managerfrm_DS_TREE_LEFT= new Ext.data.TreeStore( {
    "autoLoad": false,
    "listeners": {
        "beforeload": function(store, operation, options){  this.getProxy().setExtraParam('searchItemLeft',getValue(window.Win_Examples_file_managerfrm,'searchItemLeft','')); this.getProxy().setExtraParam('selectFileLeft',getVar(window.Win_Examples_file_managerfrm,'selectFileLeft','')); } 
    },
    "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
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
    "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
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
    "id": "winb640bb41461342e7bc18ab7462244d2c",
    "items": [
        {
            "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
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
                            "id": "ctrl239822407ec9afc0c56cfabe227332bb",
                            "listeners": {
                                "specialkey": function(){ Examples_file_managerfrm.onSearchTreeItemLeft(arguments); }
                            },
                            "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "searchItemLeft",
                            "value": "",
                            "width": "100%",
                            "xtype": "textfield"
                        },
                        {
                            "id": "ctrl6c51d8f71a03f1c5a5da243d64b002d8",
                            "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "absPathLeft",
                            "text": "_",
                            "xtype": "label"
                        }
                    ],
                    "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
                    "mainFormName": "Examples/file_manager.frm",
                    "region": "north",
                    "title": "Search",
                    "xtype": "fieldset"
                },
                {
                    "dataset": "DS_TREE_LEFT",
                    "height": "80%",
                    "id": "ctrl88e620db6c93bf0b6c9c8883b6466b2a",
                    "listeners": {
                        "itemclick": function(){  Examples_file_managerfrm.getAbsPathLeft(arguments); },
                        "itemcontextmenu": function(){ let arr = [].slice.call(arguments); arr[4].stopEvent(); Examples_file_managerfrm.onPOP(arguments); showPopupMenu(window.Win_Examples_file_managerfrm,'popUpFile',arr[4].getX(),arr[4].getY()); return false; },
                        "itemdblclick": function(){  Examples_file_managerfrm.getPropertyListLeft(arguments); }
                    },
                    "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
                    "mainFormName": "Examples/file_manager.frm",
                    "name": "fileTreeLeft",
                    "region": "center",
                    "rootVisible": false,
                    "store": DATA_SET_Examples_file_managerfrm_DS_TREE_LEFT,
                    "xtype": "treepanel"
                }
            ],
            "layout": "border",
            "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
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
            "id": "ctrlf00d443060b7c7e6529e4c21b582c9fd",
            "items": [
                {
                    "items": [
                        {
                            "height": 25,
                            "id": "ctrlb8ad74256824c8f100919c8c0d99d989",
                            "listeners": {
                                "specialkey": function(){ Examples_file_managerfrm.onSearchTreeItem(arguments); }
                            },
                            "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "searchItem",
                            "value": "",
                            "width": "100%",
                            "xtype": "textfield"
                        },
                        {
                            "id": "ctrlae27c453560efc67791c5105b0f4a7e8",
                            "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "absPath",
                            "text": "_",
                            "xtype": "label"
                        }
                    ],
                    "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
                    "mainFormName": "Examples/file_manager.frm",
                    "region": "north",
                    "title": "Search",
                    "xtype": "fieldset"
                },
                {
                    "dataset": "DS_TREE",
                    "height": "80%",
                    "id": "ctrl851bf1bdc0610975de61a6bdaff55cf4",
                    "listeners": {
                        "itemclick": function(){  Examples_file_managerfrm.getAbsPath(arguments); },
                        "itemcontextmenu": function(){ let arr = [].slice.call(arguments); arr[4].stopEvent(); Examples_file_managerfrm.onPOP(arguments); showPopupMenu(window.Win_Examples_file_managerfrm,'popUpFile',arr[4].getX(),arr[4].getY()); return false; },
                        "itemdblclick": function(){  Examples_file_managerfrm.getPropertyList(arguments); }
                    },
                    "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
                    "mainFormName": "Examples/file_manager.frm",
                    "name": "domTree",
                    "region": "center",
                    "rootVisible": false,
                    "store": DATA_SET_Examples_file_managerfrm_DS_TREE,
                    "xtype": "treepanel"
                }
            ],
            "layout": "border",
            "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
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
                    "id": "ctrl38bc32c7ba629f35d140aef39ee0f452",
                    "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
                    "mainFormName": "Examples/file_manager.frm",
                    "name": "fileinfo",
                    "region": "south",
                    "text": "",
                    "xtype": "label"
                }
            ],
            "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
            "mainFormName": "Examples/file_manager.frm",
            "region": "south",
            "split": true,
            "title": "Информация о файле",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "winb640bb41461342e7bc18ab7462244d2c",
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
