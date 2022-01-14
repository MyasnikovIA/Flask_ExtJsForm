       Ext.define('widget.form-panel',{
               extend: 'Ext.panel.Panel',
               xtype: 'form-panel',
               title: 'form-panel',
               width: 400,
               height: 300,
               defaultType: 'textfield',
               items: [{
                   allowBlank: false,
                   fieldLabel: 'Name:',
                   name: 'name',
                   emptyText: 'Name ID'
               },{
                   allowBlank: false,
                   fieldLabel: 'Password:',
                   name: 'password',
                   emptyText: 'password',
                   inputType: 'password'
               },{
                   xtype: 'checkbox',
                   fieldLabel: 'Sex',
               }],
               buttons: [{
                   text: 'OK'
               },{
                   text: 'Cancel'
               }],

               constructor: function(){
                   this.renderTo = Ext.getBody();
                   this.callParent(arguments);
                   Ext.Msg.alert('constructor','Constructor!');
               },

               initComponent: function(){
                   Ext.Msg.alert('InitComponent','InitComponent!');
                   var me = this;
                   me.defaults = {
                       anchor: '100%',
                       labelWidth: 100

                   };
                   me.callParent();

               },
               beforeRender: function(){
                   Ext.Msg.alert('beforRender','beforerender!');
                   this.callParent();
               }
           })
