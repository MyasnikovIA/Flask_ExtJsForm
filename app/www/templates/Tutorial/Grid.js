
  document.addEventListener('contextmenu', event => event.preventDefault());
  Ext.onReady(function() {
       
       
       
       var Tutorial_Gridfrm_onclose = function(data){ }
       var Tutorial_Gridfrm =  {
    "actionList": {},
    "caption": "Примеры использования контролов",
    "dataSetList": {},
    "formName": "Tutorial/Grid.frm",
    "id": "wina487b009e171d20b31b032f0df074661",
    "items": [
        {
            "items": [
                {
                    "autoHeight": true,
                    "columns": [
                        {
                            "dataIndex": "id",
                            "header": "ID",
                            "width": 330
                        },
                        {
                            "dataIndex": "name",
                            "header": "Name",
                            "width": 670
                        }
                    ],
                    "height": 150,
                    "listeners": {
                        "itemclick": function(){  console.log(arguments);   }
                    },
                    "mainForm": "wina487b009e171d20b31b032f0df074661",
                    "mainFormName": "Tutorial/Grid.frm",
                    "region": "center",
                    "store": {
                        "data": [ {id:1,name:'11111111'}                     ,{id:2,name:'2222222222222'}                     ,{id:3,name:'3333333'}                   ],
                        "fields": [
                            "id",
                            "name"
                        ]
                    },
                    "title": "Пользователи",
                    "viewConfig": { forceFit: true, scrollOffset: 0 },
                    "width": 500,
                    "xtype": "grid"
                },
                {
                    "autoHeight": true,
                    "columns": [
                        {
                            "dataIndex": "value",
                            "header": "поле 1",
                            "width": 330
                        },
                        {
                            "dataIndex": "text",
                            "header": "поле 2",
                            "width": 670
                        }
                    ],
                    "height": 150,
                    "mainForm": "wina487b009e171d20b31b032f0df074661",
                    "mainFormName": "Tutorial/Grid.frm",
                    "region": "center",
                    "store": {
                        "data": getJsonUrl('/json/tutorialdata.json'),
                        "fields": [
                            "value",
                            "text"
                        ]
                    },
                    "title": "Пользователи",
                    "url": "/json/tutorialdata.json",
                    "viewConfig": { forceFit: true, scrollOffset: 0 },
                    "width": 500,
                    "xtype": "grid"
                },
                {
                    "autoHeight": true,
                    "columns": [
                        {
                            "dataIndex": "value",
                            "header": "поле 3",
                            "width": 330
                        },
                        {
                            "dataIndex": "text",
                            "header": "поле 4",
                            "width": 670
                        }
                    ],
                    "fields": "value,text",
                    "height": 150,
                    "mainForm": "wina487b009e171d20b31b032f0df074661",
                    "mainFormName": "Tutorial/Grid.frm",
                    "region": "center",
                    "store": {
                        "data": getJsonUrl('/json/tutorialdata.json'),
                        "fields": [
                            "value",
                            "text"
                        ]
                    },
                    "title": "Пользователи",
                    "url": "/json/tutorialdata.json",
                    "width": 500,
                    "xtype": "grid"
                },
                {
                    "autoHeight": true,
                    "columns": [
                        {
                            "dataIndex": "value",
                            "header": "поле 3"
                        },
                        {
                            "dataIndex": "text",
                            "header": "поле 4"
                        }
                    ],
                    "fields": "value,text",
                    "height": 150,
                    "mainForm": "wina487b009e171d20b31b032f0df074661",
                    "mainFormName": "Tutorial/Grid.frm",
                    "region": "center",
                    "store": {
                        "data": getJsonUrl('/json/tutorialdata.json'),
                        "fields": [
                            "value",
                            "text"
                        ]
                    },
                    "title": "Пользователи",
                    "url": "/json/tutorialdata.json",
                    "width": 500,
                    "xtype": "grid"
                }
            ],
            "mainForm": "wina487b009e171d20b31b032f0df074661",
            "mainFormName": "Tutorial/Grid.frm",
            "margin": "5 5 5 5",
            "region": "north",
            "text": "Expander component",
            "title": "Центральная панель",
            "xtype": "panel"
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "wina487b009e171d20b31b032f0df074661",
    "mainFormName": "Tutorial/Grid.frm",
    "mainList": {},
    "parentEvent": {},
    "renderTo": Ext.getBody(),
    "retuen_object": {},
    "vars_return": {}

//[[%INPETDATA%]] 
 } ;
       if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
           if (typeof(window.ExtObj["FormsObject"]['Tutorial/Grid.frm']) !== 'function') {
              Tutorial_Gridfrm['parentEvent'] = window.ExtObj["FormsObject"]['Tutorial/Grid.frm'];
              delete window.ExtObj["FormsObject"]['Tutorial/Grid.frm'];
           }
       }
       if ( typeof(Tutorial_Gridfrm['vars']) !=='undefined') Tutorial_Gridfrm['vars'] = {};
       Tutorial_Gridfrm["vars"]//=[[%DataVars%]]
       if ( typeof(Tutorial_Gridfrm['formName']) !=='undefined') {
            if (localStorage.getItem("ExtJsFormVars:"+Tutorial_Gridfrm['formName']) !== null) {
                let Tutorial_GridfrmdataText = localStorage.getItem("ExtJsFormVars:"+Tutorial_Gridfrm['formName']);
                if (Tutorial_GridfrmdataText !== '{}') {
                    try {
                        let Tutorial_Gridfrm_parentVars = JSON.parse(Tutorial_GridfrmdataText);
                     } catch {
                       console.log("Error: Не удалось получить переменные из родительского окна")
                     } 
                     if (typeof(Tutorial_Gridfrm_parentVars) !== 'undefined') {
                        if (typeof(Tutorial_Gridfrm_parentVars['vars']) !== 'undefined') {
                           for( let Tutorial_Gridfrm_key in Tutorial_Gridfrm_parentVars['vars']) {
                              Tutorial_Gridfrm['vars'][Tutorial_Gridfrm_key] = Tutorial_Gridfrm_parentVars['vars'][Tutorial_Gridfrm_key];
                           } 
                        }
                        if (typeof(Tutorial_Gridfrm_parentVars['parentFrom']) !== 'undefined') {
                          Tutorial_Gridfrm['parentFrom'] = Tutorial_Gridfrm_parentVars['parentFrom'];
                        }
                     }
                     delete Tutorial_Gridfrm_parentVars;
                }
                localStorage.removeItem("ExtJsFormVars:"+Tutorial_Gridfrm['formName']);      
                delete Tutorial_GridfrmdataText;
            }
       }
       
       
           // https://metanit.com/web/extjs/7.9.php
           Tutorial_Gridfrm.mylert = function(){
              alert(3333);
           }
       
    
       let Win_Tutorial_Gridfrm = Ext.create('Ext.Viewport',Tutorial_Gridfrm);
       Win_Tutorial_Gridfrm;
  });
