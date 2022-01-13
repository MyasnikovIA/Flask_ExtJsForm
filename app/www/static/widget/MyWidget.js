// https://studentaid.psu.edu/real-scripts/ajax/ext/source/widgets/

/*

Ext.mywidget = function(field, config){
    if(field.field){
        this.field = Ext.create(field.field, 'textfield');
        config = Ext.apply({}, field); // copy so we don't disturb original config
        delete config.field;
    }else{
        this.field = field;
    }
    Ext.MyWidget.superclass.constructor.call(this, config);
};

// Ext.reg('mywidget', Ext.MyWidget);
*/

Ext.mywidget = function(field, config){
    if(field.field){
        this.field = Ext.create(field.field, 'textfield');
        config = Ext.apply({}, field); // copy so we don't disturb original config
        delete config.field;
    }else{
        this.field = field;
    }
    Ext.MyWidget.superclass.constructor.call(this, config);
};


Ext.define('MyWidget', {
     extend: 'Ext.Widget',
     xtype:'panel',
     xclass:Ext.mywidget,
     alias:'widget.mywidget', // DO USE this
     element: {
         reference: 'element',
         listeners: {
             click: 'onClick'
         },
         children: [{
             reference: 'innerElement',
             listeners: {
                 click: 'onInnerClick'
             }
         }]
     },

     create : function(config, defaultType){
         return new types[config.xtype || defaultType](config);
     },

     constructor: function(config) {
         this.callParent([config]);
         Ext.getBody().appendChild(this.element);
     },

     onClick: function() {
         console.log('element clicked', this);
     },

     onInnerClick: function() {
         console.log('inner element clicked', this.innerElement);
     }
 });