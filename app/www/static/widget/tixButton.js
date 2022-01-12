       Ext.define('tixButton', {
            extend: 'Ext.Button'
            ,xtype:'mygrid' // do not use in Ext.define
            ,alias:'widget.mygrid' // DO USE this
            ,width:100,
            heght:50,
       }
       , function() {
           Ext.create('Ext.window.Window', {
                title:'My Window',
                items:[{
                    xtype:'tixButton'
                }]
            });
       }
       )