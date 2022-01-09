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
                DATA_SET_Tutorial_Treefrm_MyTree= new Ext.data.Store( {
    "autoLoad": true,
    "listeners": {
        "beforeload": function(store, operation, options){  } 
    },
    "mainForm": "win6b74a816de563450d6ddbf9ed9e3051f",
    "mainFormName": "Tutorial/Tree.frm",
    "proxy": {
        "reader": {
            "root": "data",
            "type": "json"
        },
        "type": "ajax"
    },
    "records": []
} );
      
                
                var Tutorial_Treefrm_onclose = function(data){ }
                var Tutorial_Treefrm =  {
    "actionList": {},
    "actionVarList": {},
    "caption": "Примеры использования контролов",
    "dataSetList": {
        "MyTree": DATA_SET_Tutorial_Treefrm_MyTree
    },
    "dataSetVarList": {
        "MyTree": {}
    },
    "formName": "Tutorial/Tree.frm",
    "id": "win6b74a816de563450d6ddbf9ed9e3051f",
    "items": [
        {
            "columns": [
                {
                    "dataIndex": "text",
                    "header": "поле 1",
                    "width": 100
                },
                {
                    "dataIndex": "duration",
                    "header": "поле 2",
                    "width": 200
                },
                {
                    "dataIndex": "isLayover",
                    "header": "поле 2",
                    "width": 200
                }
            ],
            "mainForm": "win6b74a816de563450d6ddbf9ed9e3051f",
            "mainFormName": "Tutorial/Tree.frm",
            "region": "center",
            "rootVisible": false,
            "store": {
                "data": {            expanded: true,            children: [{                text: 'SFO  &nbsp;✈&nbsp; DFW',                duration: '6h 55m',                expanded: true,                children: [{                    text: 'SFO &nbsp;✈&nbsp; PHX',                    duration: '2h 04m',                    leaf: true                }, {                    text: 'PHX layover',                    duration: '2h 36m',                    isLayover: true,                    leaf: true                }, {                    text: '!!!PHX &nbsp;✈&nbsp; DFW',                    expanded: false,                    children: [{                        text: 'SFO &nbsp;✈&nbsp; PHX',                        duration: '2h 04m',                        leaf: true                    }, {                        text: 'PHX layover',                        duration: '2h 36m',                        isLayover: true,                        leaf: true                    }, {                        text: 'PHX &nbsp;✈&nbsp; DFW',                        duration: '2h 15m',                        leaf: true                    }]                }]            }]        },
                "fields": [
                    "text",
                    "duration",
                    "isLayover"
                ],
                "root": {            expanded: true,            children: [{                text: 'SFO  &nbsp;✈&nbsp; DFW',                duration: '6h 55m',                expanded: true,                children: [{                    text: 'SFO &nbsp;✈&nbsp; PHX',                    duration: '2h 04m',                    leaf: true                }, {                    text: 'PHX layover',                    duration: '2h 36m',                    isLayover: true,                    leaf: true                }, {                    text: '!!!PHX &nbsp;✈&nbsp; DFW',                    expanded: false,                    children: [{                        text: 'SFO &nbsp;✈&nbsp; PHX',                        duration: '2h 04m',                        leaf: true                    }, {                        text: 'PHX layover',                        duration: '2h 36m',                        isLayover: true,                        leaf: true                    }, {                        text: 'PHX &nbsp;✈&nbsp; DFW',                        duration: '2h 15m',                        leaf: true                    }]                }]            }]        }
            },
            "width": 500,
            "xtype": "treepanel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win6b74a816de563450d6ddbf9ed9e3051f",
    "mainFormName": "Tutorial/Tree.frm",
    "mainList": {},
    "parentEvent": {},
    "renderTo": Ext.getBody(),
    "retuen_object": {},
    "vars_return": {}

//[[%INPETDATA%]] 
 } ;
                if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
                    if (typeof(window.ExtObj["FormsObject"]['Tutorial/Tree.frm']) !== 'function') {
                       Tutorial_Treefrm['parentEvent'] = window.ExtObj["FormsObject"]['Tutorial/Tree.frm'];
                       delete window.ExtObj["FormsObject"]['Tutorial/Tree.frm'];
                    }
                }
                if ( typeof(Tutorial_Treefrm['vars']) !=='undefined') Tutorial_Treefrm['vars'] = {};
                Tutorial_Treefrm["vars"]//=[[%DataVars%]]
                window.Win_Tutorial_Treefrm = Ext.create('Ext.Viewport',Tutorial_Treefrm);
                window.Win_Tutorial_Treefrm;
                
                
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
