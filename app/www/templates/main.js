
  document.addEventListener('contextmenu', event => event.preventDefault());
  Ext.onReady(function() {
       
       
       var MENU_mainfrm_myMain= Ext.create('Ext.menu.Menu',{"name": "myMain"
, "popupobject": "GridMain"
, "items": [{"text": "dddddddd"
, "handler": function(){ console.log('menu clicked'); }}, {"text": "print"
, "menu": [{"text": "22222"
, "handler": function(){ console.log('menu clicked'); }}, {"text": "333333"
, "handler": function(){  console.log('menu clicked'); }}]}]})
       var mainfrm_onclose = function(data){ }
       var mainfrm =  {
    "actionList": {},
    "caption": "Примеры использования контролов",
    "dataSetList": {},
    "formName": "main.frm",
    "id": "win534a341b9344520e5e6f05fe71f146af",
    "items": [
        {
            "items": [
                "->",
                {
                    "mainForm": "win534a341b9344520e5e6f05fe71f146af",
                    "mainFormName": "main.frm",
                    "xtype": "textfield"
                },
                {
                    "html": "\n             file\n             \n    ",
                    "mainForm": "win534a341b9344520e5e6f05fe71f146af",
                    "mainFormName": "main.frm",
                    "menu": [
                        {
                            "html": "eeee\n        ",
                            "listeners": {
                                "click": function(){ showPopupMenu(this,'myMain',200,200); }
                            },
                            "mainForm": "win534a341b9344520e5e6f05fe71f146af",
                            "mainFormName": "main.frm",
                            "xtype": "button"
                        }
                    ],
                    "xtype": "button"
                }
            ],
            "mainForm": "win534a341b9344520e5e6f05fe71f146af",
            "mainFormName": "main.frm",
            "region": "north",
            "xtype": "toolbar"
        },
        {
            "collapsible": true,
            "html": "111111111\n    ",
            "mainForm": "win534a341b9344520e5e6f05fe71f146af",
            "mainFormName": "main.frm",
            "region": "west",
            "split": true,
            "title": "test",
            "width": 150
        },
        {
            "collapsible": true,
            "html": "2222222222\n\n        ",
            "mainForm": "win534a341b9344520e5e6f05fe71f146af",
            "mainFormName": "main.frm",
            "region": "south",
            "split": true,
            "title": "test",
            "width": 150
        },
        {
            "columns": [
                {
                    "dataIndex": "id",
                    "header": "ID",
                    "width": 50
                },
                {
                    "dataIndex": "name",
                    "header": "Name",
                    "width": 500
                }
            ],
            "id": "ctrlcbdcd2900e1b759fdd672acdbbc12bab",
            "listeners": {
                "itemclick": function(){  console.log(arguments);   },
                "itemcontextmenu": function(){ let arr = [].slice.call(arguments); arr[4].stopEvent(); mainfrm.onPOP(arguments); showPopupMenu(this,'myMain',arr[4].getX(),arr[4].getY()); return false; }
            },
            "mainForm": "win534a341b9344520e5e6f05fe71f146af",
            "mainFormName": "main.frm",
            "name": "GridMain",
            "region": "center",
            "store": {
                "data": [ {id:1,name:'11111111'}                    ,{id:2,name:'2222222222222'}                    ,{id:3,name:'3333333'}                  ],
                "fields": [
                    "id",
                    "name"
                ]
            },
            "title": "Пользователи",
            "xtype": "grid"
        },
        {
            "collapsible": true,
            "items": [
                {
                    "listeners": {
                        "itemclick": function(){  console.log(arguments);   },
                        "itemcontextmenu": function(){ let arr = [].slice.call(arguments); arr[4].stopEvent(); mainfrm.onPOP(arguments); showPopupMenu(this,'myMain',arr[4].getX(),arr[4].getY()); return false; }
                    },
                    "mainForm": "win534a341b9344520e5e6f05fe71f146af",
                    "mainFormName": "main.frm",
                    "region": "center",
                    "rootVisible": false,
                    "store": {
                        "fields": [],
                        "root": {
                            "children": [
                                {
                                    "field": "text",
                                    "leaf": true,
                                    "text": "поле 1"
                                },
                                {
                                    "children": [
                                        {
                                            "field": "text",
                                            "leaf": true,
                                            "text": "поле 111111111111111111"
                                        },
                                        {
                                            "field": "text",
                                            "leaf": true,
                                            "text": "поле 1"
                                        },
                                        {
                                            "field": "text",
                                            "leaf": true,
                                            "text": "поле 1"
                                        }
                                    ],
                                    "field": "duration",
                                    "text": "поле 2"
                                },
                                {
                                    "field": "isLayover",
                                    "leaf": true,
                                    "text": "поле 2"
                                }
                            ],
                            "expanded": true
                        }
                    },
                    "xtype": "treepanel"
                }
            ],
            "mainForm": "win534a341b9344520e5e6f05fe71f146af",
            "mainFormName": "main.frm",
            "region": "east",
            "split": true,
            "title": "test",
            "width": 150
        }
    ],
    "layout": "border",
    "listeners": {},
    "mainForm": "win534a341b9344520e5e6f05fe71f146af",
    "mainFormName": "main.frm",
    "mainList": {
        "myMain": MENU_mainfrm_myMain
    },
    "parentEvent": {},
    "renderTo": Ext.getBody(),
    "retuen_object": {},
    "vars_return": {}

//[[%INPETDATA%]] 
 } ;
       if ( typeof(window.ExtObj["FormsObject"]) !=='undefined'){
           if (typeof(window.ExtObj["FormsObject"]['main.frm']) !== 'function') {
              mainfrm['parentEvent'] = window.ExtObj["FormsObject"]['main.frm'];
              delete window.ExtObj["FormsObject"]['main.frm'];
           }
       }
       if ( typeof(mainfrm['vars']) !=='undefined') mainfrm['vars'] = {};
       mainfrm["vars"]//=[[%DataVars%]]
       if ( typeof(mainfrm['formName']) !=='undefined') {
            if (localStorage.getItem("ExtJsFormVars:"+mainfrm['formName']) !== null) {
                let mainfrmdataText = localStorage.getItem("ExtJsFormVars:"+mainfrm['formName']);
                if (mainfrmdataText !== '{}') {
                    try {
                        let mainfrm_parentVars = JSON.parse(mainfrmdataText);
                     } catch {
                       console.log("Error: Не удалось получить переменные из родительского окна")
                     } 
                     if (typeof(mainfrm_parentVars) !== 'undefined') {
                        if (typeof(mainfrm_parentVars['vars']) !== 'undefined') {
                           for( let mainfrm_key in mainfrm_parentVars['vars']) {
                              mainfrm['vars'][mainfrm_key] = mainfrm_parentVars['vars'][mainfrm_key];
                           } 
                        }
                        if (typeof(mainfrm_parentVars['parentFrom']) !== 'undefined') {
                          mainfrm['parentFrom'] = mainfrm_parentVars['parentFrom'];
                        }
                     }
                     delete mainfrm_parentVars;
                }
                localStorage.removeItem("ExtJsFormVars:"+mainfrm['formName']);      
                delete mainfrmdataText;
            }
       }
       
       
           // https://forum.sencha.com/forum/showthread.php?282834-Context-menu-using-Right-Mouse-Click-in-ExtJS4
           mainfrm.onclickItem = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log(arr);
           }
           mainfrm.onPOP = function(arguments) {
              console.log(arguments);
           }
           Ext.create('Ext.menu.Menu', {
                id:"testCtrl",
                items: [{
                            text: 'Menu One',
                            iconCls: 'edit'
                        }, {
                            text: 'Menu Two',
                            menu: {
                                xtype: 'menu',
                                items: [{
                                    text: 'Next Level'
                                },{
                                    text: 'Next Level'
                                },{
                                    text: 'Next Level'
                                }]
                            }
                        }, {
                            text: 'Menu Three',
                            scale: 'small'
                        }, {
                            text: 'Menu Four',
                            scale: 'small'
                }]
            })
            Ext.getCmp('testCtrl').showAt(200,200);
       
    
       let Win_mainfrm = Ext.create('Ext.Viewport',mainfrm);
       Win_mainfrm;
  });
