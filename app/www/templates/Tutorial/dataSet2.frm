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
                DATA_SET_Tutorial_dataSet2frm_myDataSet= new Ext.data.Store( {
    "autoLoad": true,
    "listeners": {
        "beforeload": function(store, operation, options){  } 
    },
    "mainForm": "win5593dde3df14671350e0d42b822e1812",
    "mainFormName": "Tutorial/dataSet2.frm",
    "records": [],
    "typ": "js"
} );
      
                
                var Tutorial_dataSet2frm_onclose = function(data){ }
                var Tutorial_dataSet2frm =  {
    "actionList": {},
    "caption": "Примеры использования контролов",
    "dataSetList": {
        "myDataSet": DATA_SET_Tutorial_dataSet2frm_myDataSet
    },
    "formName": "Tutorial/dataSet2.frm",
    "id": "win5593dde3df14671350e0d42b822e1812",
    "items": [
        {
            "items": [
                {
                    "listeners": {
                        "click": function(){ Tutorial_dataSet2frm.onClickBtn(arguments); }
                    },
                    "mainForm": "win5593dde3df14671350e0d42b822e1812",
                    "mainFormName": "Tutorial/dataSet2.frm",
                    "text": "test",
                    "xtype": "button"
                },
                {
                    "columns": [
                        {
                            "dataIndex": "id",
                            "header": "поле 1",
                            "width": 100
                        },
                        {
                            "dataIndex": "name",
                            "header": "поле 2",
                            "width": 150
                        }
                    ],
                    "dataset": "myDataSet",
                    "height": 250,
                    "mainForm": "win5593dde3df14671350e0d42b822e1812",
                    "mainFormName": "Tutorial/dataSet2.frm",
                    "region": "center",
                    "store": DATA_SET_Tutorial_dataSet2frm_myDataSet,
                    "xtype": "grid"
                }
            ],
            "mainForm": "win5593dde3df14671350e0d42b822e1812",
            "mainFormName": "Tutorial/dataSet2.frm",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win5593dde3df14671350e0d42b822e1812",
    "mainFormName": "Tutorial/dataSet2.frm",
    "mainList": {},
    "parentEvent": {},
    "renderTo": Ext.getBody(),
    "retuen_object": {},
    "vars_return": {}

//[[%INPETDATA%]] 
 } ;
                if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
                    if (typeof(window.ExtObj["FormsObject"]['Tutorial/dataSet2.frm']) !== 'function') {
                       Tutorial_dataSet2frm['parentEvent'] = window.ExtObj["FormsObject"]['Tutorial/dataSet2.frm'];
                       delete window.ExtObj["FormsObject"]['Tutorial/dataSet2.frm'];
                    }
                }
                if ( typeof(Tutorial_dataSet2frm['vars']) !=='undefined') Tutorial_dataSet2frm['vars'] = {};
                Tutorial_dataSet2frm["vars"]//=[[%DataVars%]]
                window.Win_Tutorial_dataSet2frm = Ext.create('Ext.Viewport',Tutorial_dataSet2frm);
                window.Win_Tutorial_dataSet2frm;
                
       
           Tutorial_dataSet2frm.onClickBtn = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("imput argument fun", arr);
              console.log( getDataSet(window.Win_Tutorial_dataSet2frm,"myDataSet") );
              refreshDataSet(window.Win_Tutorial_dataSet2frm,"myDataSet", function(rec) {
                  console.log("rec",rec);
              })
           }
           Tutorial_dataSet2frm.listeners["afterrender"] = function() {
              console.log("------- box---",window.Win_Tutorial_dataSet2frm );
             // console.log(window.Win_Tutorial_dataSet2frm);
             // refreshDataSet(window.Win_Tutorial_dataSet2frm,"myDataSet", function(rec) {
             //     console.log("rec",rec);
             // })
           }
           refreshDataSet(window.Win_Tutorial_dataSet2frm,"myDataSet", function(rec) {
                console.log("rec",rec);
           })
       
    
           });

        </script>
   </head>
   <body></body>
</html>
