       Ext.define('widget.form-panel',{
               extend: 'Ext.panel.Panel',
               //xtype: 'form-panel',
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
                   // Ext.Msg.alert('constructor','Constructor!');
               }
           })
