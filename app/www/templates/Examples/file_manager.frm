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
                DATA_SET_Examples_file_managerfrm_DS_TREE= new Ext.data.TreeStore( {
    "autoLoad": false,
    "listeners": {
        "beforeload": function(store, operation, options){  this.getProxy().setExtraParam('DATE_FROM',getVar(window.Win_Examples_file_managerfrm,'DATE_FROM','111')); this.getProxy().setExtraParam('searchItem',getValue(window.Win_Examples_file_managerfrm,'searchItem','')); this.getProxy().setExtraParam('selectFile',getVar(window.Win_Examples_file_managerfrm,'selectFile','')); } 
    },
    "mainForm": "win4c3c8c4ddc66c86baf679ce1600bea6a",
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
        "DS_TREE": DATA_SET_Examples_file_managerfrm_DS_TREE
    },
    "dataSetVarList": {
        "DS_TREE": {
            "DATE_FROM": {
                "default": "111",
                "src": "DATE_FROM",
                "srctype": "var"
            },
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
        }
    },
    "formName": "Examples/file_manager.frm",
    "fullscreen": true,
    "id": "win4c3c8c4ddc66c86baf679ce1600bea6a",
    "items": [
        {
            "autoScroll": true,
            "height": "40%",
            "items": [
                {
                    "items": [
                        {
                            "height": 25,
                            "id": "ctrlf960ce1273c46101233fdc5894bff2a6",
                            "listeners": {
                                "specialkey": function(){ Examples_file_managerfrm.onSearchTreeItem(arguments); }
                            },
                            "mainForm": "win4c3c8c4ddc66c86baf679ce1600bea6a",
                            "mainFormName": "Examples/file_manager.frm",
                            "name": "searchItem",
                            "value": "",
                            "width": "100%",
                            "xtype": "textfield"
                        }
                    ],
                    "mainForm": "win4c3c8c4ddc66c86baf679ce1600bea6a",
                    "mainFormName": "Examples/file_manager.frm",
                    "region": "north",
                    "title": "Search",
                    "xtype": "fieldset"
                },
                {
                    "dataset": "DS_TREE",
                    "height": "80%",
                    "id": "ctrl4ff0052fb951bbcce7f1132373c3935c",
                    "listeners": {
                        "itemclick": function(){  Examples_file_managerfrm.getPropertyList(arguments);   },
                        "itemcontextmenu": function(){ let arr = [].slice.call(arguments); arr[4].stopEvent();  showPopupMenu(window.Win_Examples_file_managerfrm,'popupMenuDomTree',arr[4].getX(),arr[4].getY()); return false; }
                    },
                    "mainForm": "win4c3c8c4ddc66c86baf679ce1600bea6a",
                    "mainFormName": "Examples/file_manager.frm",
                    "name": "domTree",
                    "region": "center",
                    "rootVisible": false,
                    "store": DATA_SET_Examples_file_managerfrm_DS_TREE,
                    "xtype": "treepanel"
                }
            ],
            "layout": "border",
            "mainForm": "win4c3c8c4ddc66c86baf679ce1600bea6a",
            "mainFormName": "Examples/file_manager.frm",
            "minSize": 100,
            "region": "west",
            "split": true,
            "width": "20%",
            "xtype": "panel"
        },
        {
            "id": "ctrl8d9c950bec17be436e3fa3ab145d4d14",
            "mainForm": "win4c3c8c4ddc66c86baf679ce1600bea6a",
            "mainFormName": "Examples/file_manager.frm",
            "name": "demoBody",
            "region": "center",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win4c3c8c4ddc66c86baf679ce1600bea6a",
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
                
       
           Examples_file_managerfrm.getPropertyList = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("GET imput argument fun", arr);
              setVar(window.Win_Examples_file_managerfrm,"selectFile",arr[1].data);
              refreshDataSet(window.Win_Examples_file_managerfrm,"DS_TREE")
           }
           Examples_file_managerfrm.onSearchTreeItem = function(arguments) {
              let arr = [].slice.call(arguments);
              if (arr[1].getKey() == arr[1].ENTER) {
                  refreshDataSet(window.Win_Examples_file_managerfrm,"DS_TREE")
              }
           }
           refreshDataSet(window.Win_Examples_file_managerfrm,"DS_TREE")
       
    
                
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

        </script>
   </head>
   <body></body>
</html>
