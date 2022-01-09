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
    "mainForm": "win4e0316eca0bb2974a7a7067a53254679",
    "mainFormName": "Tutorial/dataSet2.frm",
    "proxy": {
        "reader": {
            "root": "data",
            "type": "json"
        },
        "type": "ajax"
    },
    "records": [],
    "typ": "js"
} );
      
                
                var Tutorial_dataSet2frm_onclose = function(data){ }
                var Tutorial_dataSet2frm =  {
    "actionList": {},
    "actionVarList": {},
    "caption": "Примеры использования контролов",
    "dataSetList": {
        "myDataSet": DATA_SET_Tutorial_dataSet2frm_myDataSet
    },
    "dataSetVarList": {
        "myDataSet": {}
    },
    "formName": "Tutorial/dataSet2.frm",
    "id": "win4e0316eca0bb2974a7a7067a53254679",
    "items": [
        {
            "items": [
                {
                    "listeners": {
                        "click": function(){ Tutorial_dataSet2frm.onClickBtnGET(arguments); }
                    },
                    "mainForm": "win4e0316eca0bb2974a7a7067a53254679",
                    "mainFormName": "Tutorial/dataSet2.frm",
                    "text": "onClickBtnGET",
                    "xtype": "button"
                },
                {
                    "listeners": {
                        "click": function(){ Tutorial_dataSet2frm.onClickBtnPOST(arguments); }
                    },
                    "mainForm": "win4e0316eca0bb2974a7a7067a53254679",
                    "mainFormName": "Tutorial/dataSet2.frm",
                    "text": "onClickBtnPOST",
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
                    "mainForm": "win4e0316eca0bb2974a7a7067a53254679",
                    "mainFormName": "Tutorial/dataSet2.frm",
                    "region": "center",
                    "store": DATA_SET_Tutorial_dataSet2frm_myDataSet,
                    "xtype": "grid"
                }
            ],
            "mainForm": "win4e0316eca0bb2974a7a7067a53254679",
            "mainFormName": "Tutorial/dataSet2.frm",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win4e0316eca0bb2974a7a7067a53254679",
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
                
       
           Tutorial_dataSet2frm.onClickBtnGET = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("imput argument fun", arr);
              console.log( getDataSet(window.Win_Tutorial_dataSet2frm,"myDataSet") );
              refreshDataSet(window.Win_Tutorial_dataSet2frm,"myDataSet", function(rec) {
                  console.log("rec",rec);
              })
           }

           Tutorial_dataSet2frm.onClickBtnPOST = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("imput argument fun", arr);
              console.log( getDataSet(window.Win_Tutorial_dataSet2frm,"myDataSet") );
              refreshDataSet(window.Win_Tutorial_dataSet2frm,"myDataSet", function(rec) {
                  console.log("rec",rec);
              },true);
           }


           refreshDataSet(window.Win_Tutorial_dataSet2frm,"myDataSet", function(rec) {
                console.log("rec",rec);
           })
       
    
           });

        </script>
   </head>
   <body></body>
</html>
