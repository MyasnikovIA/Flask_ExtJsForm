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
                DATA_SET_Tutorial_dataSet2frm_myDataSet= new Ext.data.Store( {
    "autoLoad": true,
    "listeners": {
        "beforeload": function(store, operation, options){  } 
    },
    "mainForm": "win0e2107db6237eb457e7b8ff913cc57fd",
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
    "id": "win0e2107db6237eb457e7b8ff913cc57fd",
    "items": [
        {
            "items": [
                {
                    "listeners": {
                        "click": function(){ Tutorial_dataSet2frm.onClickBtn(arguments); }
                    },
                    "mainForm": "win0e2107db6237eb457e7b8ff913cc57fd",
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
                    "mainForm": "win0e2107db6237eb457e7b8ff913cc57fd",
                    "mainFormName": "Tutorial/dataSet2.frm",
                    "region": "center",
                    "store": DATA_SET_Tutorial_dataSet2frm_myDataSet,
                    "xtype": "grid"
                }
            ],
            "mainForm": "win0e2107db6237eb457e7b8ff913cc57fd",
            "mainFormName": "Tutorial/dataSet2.frm",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win0e2107db6237eb457e7b8ff913cc57fd",
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
                
       
           Tutorial_dataSet2frm.onClickBtn = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("imput argument fun", arr);
              refreshDataSet(this,"myDataSet", function(rec) {
                  console.log("rec",rec);
              })
           }
       
    
                window.Win_Tutorial_dataSet2frm = Ext.create('Ext.Viewport',Tutorial_dataSet2frm);
                window.Win_Tutorial_dataSet2frm;
           });

        </script>
   </head>
   <body></body>
</html>
