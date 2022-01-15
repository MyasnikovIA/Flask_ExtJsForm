// https://studentaid.psu.edu/real-scripts/ajax/ext/source/widgets/
Ext.define('widget.item', {
     extend: 'Ext.Widget',
     constructor: function(config) {
         this.callParent([config]);
         Ext.getBody().appendChild(this.element);
     },
 });