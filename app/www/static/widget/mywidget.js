// https://studentaid.psu.edu/real-scripts/ajax/ext/source/widgets/
Ext.define('widget.mywidget', {
     extend: 'Ext.Widget',
     //xtype:'MyWidget',
     // The element template passed to Ext.Element.create()
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