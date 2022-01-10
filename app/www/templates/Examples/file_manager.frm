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
                DATA_SET_Examples_file_managerfrm_DS_TREE_LEFT= new Ext.data.TreeStore( {
    "autoLoad": false,
    "listeners": {
        "beforeload": function(store, operation, options){  this.getProxy().setExtraParam('searchItemLeft',getValue(window.Win_Examples_file_managerfrm,'searchItemLeft','')); this.getProxy().setExtraParam('selectFileLeft',getVar(window.Win_Examples_file_managerfrm,'selectFileLeft','')); } 
    },
    "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
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
    "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
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
, "items": [{"text": "\u0420\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c"
, "handler": function(){ Examples_file_managerfrm.editFile(arguments); }}, {"text": "\u0423\u0434\u0430\u043b\u0438\u0442\u044c"
, "handler": function(){ Examples_file_managerfrm.editFile(arguments); }}]})
                var Examples_file_managerfrm_onclose = function(data){ }
                var Examples_file_managerfrm =  {
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
    "id": "win722e12b5e9416987d9cbb212e2cee0ff",
    "items": [
        {
            "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
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
                            "id": "ctrl4850bf677593b852b12c4b25fc19534b",
                            "listeners": {
                                "specialkey": function(){ Examples_file_managerfrm.onSearchTreeItemLeft(arguments); }
                            },
                            "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "searchItemLeft",
                            "value": "",
                            "width": "100%",
                            "xtype": "textfield"
                        },
                        {
                            "id": "ctrlef30dfbcac4277b8e659a315fc73ae38",
                            "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "absPathLeft",
                            "text": "_",
                            "xtype": "label"
                        }
                    ],
                    "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
                    "mainFormName": "Examples/file_manager.frm",
                    "region": "north",
                    "title": "Search",
                    "xtype": "fieldset"
                },
                {
                    "dataset": "DS_TREE_LEFT",
                    "height": "80%",
                    "id": "ctrld48e47350fb6fd31dbe36c45ca11a4e3",
                    "listeners": {
                        "itemclick": function(){  Examples_file_managerfrm.getAbsPathLeft(arguments); },
                        "itemcontextmenu": function(){ let arr = [].slice.call(arguments); arr[4].stopEvent(); Examples_file_managerfrm.onPOP(arguments); showPopupMenu(window.Win_Examples_file_managerfrm,'popUpFile',arr[4].getX(),arr[4].getY()); return false; },
                        "itemdblclick": function(){  Examples_file_managerfrm.getPropertyListLeft(arguments); }
                    },
                    "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
                    "mainFormName": "Examples/file_manager.frm",
                    "name": "fileTreeLeft",
                    "region": "center",
                    "rootVisible": false,
                    "store": DATA_SET_Examples_file_managerfrm_DS_TREE_LEFT,
                    "xtype": "treepanel"
                }
            ],
            "layout": "border",
            "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
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
            "id": "ctrl21eda6751d7dfa38d7adfb130657dbce",
            "items": [
                {
                    "items": [
                        {
                            "height": 25,
                            "id": "ctrl6f22177f5980827318958108c550be36",
                            "listeners": {
                                "specialkey": function(){ Examples_file_managerfrm.onSearchTreeItem(arguments); }
                            },
                            "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "searchItem",
                            "value": "",
                            "width": "100%",
                            "xtype": "textfield"
                        },
                        {
                            "id": "ctrl543bbdb04a8ad01f4c70fc87dd853f1e",
                            "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "absPath",
                            "text": "_",
                            "xtype": "label"
                        }
                    ],
                    "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
                    "mainFormName": "Examples/file_manager.frm",
                    "region": "north",
                    "title": "Search",
                    "xtype": "fieldset"
                },
                {
                    "dataset": "DS_TREE",
                    "height": "80%",
                    "id": "ctrlc5239706161c86aa18966f375ddbb517",
                    "listeners": {
                        "itemclick": function(){  Examples_file_managerfrm.getAbsPath(arguments); },
                        "itemcontextmenu": function(){ let arr = [].slice.call(arguments); arr[4].stopEvent(); Examples_file_managerfrm.onPOP(arguments); showPopupMenu(window.Win_Examples_file_managerfrm,'popUpFile',arr[4].getX(),arr[4].getY()); return false; },
                        "itemdblclick": function(){  Examples_file_managerfrm.getPropertyList(arguments); }
                    },
                    "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
                    "mainFormName": "Examples/file_manager.frm",
                    "name": "domTree",
                    "region": "center",
                    "rootVisible": false,
                    "store": DATA_SET_Examples_file_managerfrm_DS_TREE,
                    "xtype": "treepanel"
                }
            ],
            "layout": "border",
            "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
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
                    "id": "ctrl33a6df10b4e00ccb1b2146b75b859bb5",
                    "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
                    "mainFormName": "Examples/file_manager.frm",
                    "name": "fileinfo",
                    "text": "",
                    "xtype": "label"
                }
            ],
            "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
            "mainFormName": "Examples/file_manager.frm",
            "region": "south",
            "split": true,
            "title": "Информация о файле",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win722e12b5e9416987d9cbb212e2cee0ff",
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
              setVisible(window.Win_Examples_file_managerfrm,pop.items.items[1], false);
              setDisable(window.Win_Examples_file_managerfrm,pop.items.items[1], true);
              let data = arr[1].data;
              Examples_file_managerfrm.SelectFileObject = data;
              if (data['isFile'] === true) {
                  setVisible(window.Win_Examples_file_managerfrm,pop.items.items[0], true);
              } else {
                  setVisible(window.Win_Examples_file_managerfrm,pop.items.items[0], false);
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

        </script>
   </head>
   <body></body>
</html>
