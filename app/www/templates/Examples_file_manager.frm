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
    "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
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
    "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
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
      
                
                var Examples_file_managerfrm_onclose = function(data){ }
                var Examples_file_managerfrm =  {
    "actionList": {},
    "actionVarList": {},
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
    "id": "wina03db121b050e8a2bab1c88f9cb70ea2",
    "items": [
        {
            "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
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
                            "id": "ctrl9816d02ee934be28b0d3a23138397b43",
                            "listeners": {
                                "specialkey": function(){ Examples_file_managerfrm.onSearchTreeItemLeft(arguments); }
                            },
                            "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "searchItemLeft",
                            "value": "",
                            "width": "100%",
                            "xtype": "textfield"
                        },
                        {
                            "id": "ctrl6dc1f888acef858759e51b4942e71671",
                            "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "absPathLeft",
                            "text": "",
                            "xtype": "label"
                        }
                    ],
                    "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
                    "mainFormName": "Examples/file_manager.frm",
                    "region": "north",
                    "title": "Search",
                    "xtype": "fieldset"
                },
                {
                    "dataset": "DS_TREE_LEFT",
                    "height": "80%",
                    "id": "ctrl48dda840487c4519bf69524e03e1e27f",
                    "listeners": {
                        "itemclick": function(){  Examples_file_managerfrm.getAbsPathLeft(arguments); },
                        "itemcontextmenu": function(){ let arr = [].slice.call(arguments); arr[4].stopEvent();  showPopupMenu(window.Win_Examples_file_managerfrm,'popupMenuDomTree',arr[4].getX(),arr[4].getY()); return false; },
                        "itemdblclick": function(){  Examples_file_managerfrm.getPropertyListLeft(arguments); }
                    },
                    "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
                    "mainFormName": "Examples/file_manager.frm",
                    "name": "fileTreeLeft",
                    "region": "center",
                    "rootVisible": false,
                    "store": DATA_SET_Examples_file_managerfrm_DS_TREE_LEFT,
                    "xtype": "treepanel"
                }
            ],
            "layout": "border",
            "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
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
            "id": "ctrl254e86a03ca13c9ed697fc9b098df76e",
            "items": [
                {
                    "items": [
                        {
                            "height": 25,
                            "id": "ctrl90a123517fef0a1b49faa96d73e9eab7",
                            "listeners": {
                                "specialkey": function(){ Examples_file_managerfrm.onSearchTreeItem(arguments); }
                            },
                            "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "searchItem",
                            "value": "",
                            "width": "100%",
                            "xtype": "textfield"
                        },
                        {
                            "id": "ctrlda7d34f33c620beaaa904fbc35b0593f",
                            "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "absPath",
                            "text": "",
                            "xtype": "label"
                        }
                    ],
                    "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
                    "mainFormName": "Examples/file_manager.frm",
                    "region": "north",
                    "title": "Search",
                    "xtype": "fieldset"
                },
                {
                    "dataset": "DS_TREE",
                    "height": "80%",
                    "id": "ctrlc7e46f905f8f55cd16e7dc6c48edb612",
                    "listeners": {
                        "itemclick": function(){  Examples_file_managerfrm.getAbsPath(arguments); },
                        "itemcontextmenu": function(){ let arr = [].slice.call(arguments); arr[4].stopEvent();  showPopupMenu(window.Win_Examples_file_managerfrm,'popupMenuDomTree',arr[4].getX(),arr[4].getY()); return false; },
                        "itemdblclick": function(){  Examples_file_managerfrm.getPropertyList(arguments); }
                    },
                    "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
                    "mainFormName": "Examples/file_manager.frm",
                    "name": "domTree",
                    "region": "center",
                    "rootVisible": false,
                    "store": DATA_SET_Examples_file_managerfrm_DS_TREE,
                    "xtype": "treepanel"
                }
            ],
            "layout": "border",
            "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
            "mainFormName": "Examples/file_manager.frm",
            "minSize": 100,
            "name": "demoBody",
            "region": "center",
            "split": true,
            "width": "50%",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "wina03db121b050e8a2bab1c88f9cb70ea2",
    "mainFormName": "Examples/file_manager.frm",
    "mainList": {},
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
                
       
           // absPath
           Examples_file_managerfrm.getAbsPathLeft = function(arguments) {
              let arr = [].slice.call(arguments);
              setCaption(window.Win_Examples_file_managerfrm,"absPathLeft",arr[1].data['abspath']);
           }

           Examples_file_managerfrm.getAbsPath = function(arguments) {
              let arr = [].slice.call(arguments);
              setCaption(window.Win_Examples_file_managerfrm,"absPath",arr[1].data['abspath']);
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
