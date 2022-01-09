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
                DATA_SET_Examples_indexfrm_DS_TREE= new Ext.data.TreeStore( {
    "autoLoad": false,
    "listeners": {
        "beforeload": function(store, operation, options){  this.getProxy().setExtraParam('DATE_FROM',getVar(window.Win_Examples_indexfrm,'DATE_FROM','111')); this.getProxy().setExtraParam('searchItem',getValue(window.Win_Examples_indexfrm,'searchItem','')); } 
    },
    "mainForm": "wine9f3c4b22df46272bd3b7f23aee79b0e",
    "mainFormName": "Examples/index.frm",
    "proxy": {
        "reader": {
            "root": "data",
            "type": "json"
        },
        "type": "ajax"
    },
    "records": []
} );
      
                
                var Examples_indexfrm_onclose = function(data){ }
                var Examples_indexfrm =  {
    "actionList": {},
    "actionVarList": {},
    "caption": "Примеры использования контролов",
    "dataSetList": {
        "DS_TREE": DATA_SET_Examples_indexfrm_DS_TREE
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
            }
        }
    },
    "formName": "Examples/index.frm",
    "fullscreen": true,
    "id": "wine9f3c4b22df46272bd3b7f23aee79b0e",
    "items": [
        {
            "autoScroll": true,
            "height": "40%",
            "items": [
                {
                    "items": [
                        {
                            "height": 25,
                            "id": "ctrl51673d437e4f64a557bff3ac0296a345",
                            "listeners": {
                                "specialkey": function(){ Examples_indexfrm.onSearchTreeItem(arguments); }
                            },
                            "mainForm": "wine9f3c4b22df46272bd3b7f23aee79b0e",
                            "mainFormName": "Examples/index.frm",
                            "name": "searchItem",
                            "value": "",
                            "width": "100%",
                            "xtype": "textfield"
                        }
                    ],
                    "mainForm": "wine9f3c4b22df46272bd3b7f23aee79b0e",
                    "mainFormName": "Examples/index.frm",
                    "region": "north",
                    "title": "Search",
                    "xtype": "fieldset"
                },
                {
                    "dataset": "DS_TREE",
                    "height": "80%",
                    "id": "ctrlfe63f2b1963296980046e3d565d80cfa",
                    "listeners": {
                        "itemclick": function(){  Examples_indexfrm.getPropertyList(arguments);   },
                        "itemcontextmenu": function(){ let arr = [].slice.call(arguments); arr[4].stopEvent();  showPopupMenu(window.Win_Examples_indexfrm,'popupMenuDomTree',arr[4].getX(),arr[4].getY()); return false; }
                    },
                    "mainForm": "wine9f3c4b22df46272bd3b7f23aee79b0e",
                    "mainFormName": "Examples/index.frm",
                    "name": "domTree",
                    "region": "center",
                    "rootVisible": false,
                    "store": DATA_SET_Examples_indexfrm_DS_TREE,
                    "xtype": "treepanel"
                }
            ],
            "layout": "border",
            "mainForm": "wine9f3c4b22df46272bd3b7f23aee79b0e",
            "mainFormName": "Examples/index.frm",
            "minSize": 100,
            "region": "west",
            "split": true,
            "width": "20%",
            "xtype": "panel"
        },
        {
            "id": "ctrl6ff4ea618e4ee45f2d9549b649bae28d",
            "mainForm": "wine9f3c4b22df46272bd3b7f23aee79b0e",
            "mainFormName": "Examples/index.frm",
            "name": "demoBody",
            "region": "center",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "wine9f3c4b22df46272bd3b7f23aee79b0e",
    "mainFormName": "Examples/index.frm",
    "mainList": {},
    "parentEvent": {},
    "renderTo": Ext.getBody(),
    "retuen_object": {},
    "vars_return": {}

//[[%INPETDATA%]] 
 } ;
                if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
                    if (typeof(window.ExtObj["FormsObject"]['Examples/index.frm']) !== 'function') {
                       Examples_indexfrm['parentEvent'] = window.ExtObj["FormsObject"]['Examples/index.frm'];
                       delete window.ExtObj["FormsObject"]['Examples/index.frm'];
                    }
                }
                if ( typeof(Examples_indexfrm['vars']) !=='undefined') Examples_indexfrm['vars'] = {};
                Examples_indexfrm["vars"]//=[[%DataVars%]]
                window.Win_Examples_indexfrm = Ext.create('Ext.Viewport',Examples_indexfrm);
                window.Win_Examples_indexfrm;
                
       
           Examples_indexfrm.getPropertyList = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("GET imput argument fun", arr);
           }
           Examples_indexfrm.onSearchTreeItem = function(arguments) {
              let arr = [].slice.call(arguments);
              if (arr[1].getKey() == arr[1].ENTER) {
                  refreshDataSet(window.Win_Examples_indexfrm,"DS_TREE")
              }
           }
           refreshDataSet(window.Win_Examples_indexfrm,"DS_TREE", function(rec) {
                console.log("rec",rec);
           })

       
    
                
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
