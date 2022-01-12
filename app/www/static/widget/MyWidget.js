// https://studentaid.psu.edu/real-scripts/ajax/ext/source/widgets/

Ext.define('MyWidget', {
     extend: 'Ext.Widget',

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
         // It is important to remember to call the Widget superclass constructor
         // when overriding the constructor in a derived class. This ensures that
         // the element is initialized from the template, and that initConfig() is
         // is called.
         this.callParent([config]);

         // After calling the superclass constructor, the Element is available and
         // can safely be manipulated. Reference Elements are instances of
         // Ext.Element, and are cached on each Widget instance by reference name.
         Ext.getBody().appendChild(this.element);
     },

     onClick: function() {
         // listeners use this Widget instance as their scope
         console.log('element clicked', this);
     },

     onInnerClick: function() {
         // access the innerElement reference by name
         console.log('inner element clicked', this.innerElement);
     }
 });