<div caption="Примеры использования контролов" >

    <cmpScript>
       <![CDATA[
var MyGrid = Ext.define('mygrid', {
    extend:'Ext.grid.Panel',
    alias: 'widget.mygrid',
    // rest of grid...
}, function() {
    Ext.create('Ext.window.Window', {
        title:'My Window',
        items:[{
            xtype:'mygrid'
        }]
    });
});

Ext.create('Ext.window.Window', {
    title:'My Window',
    items:[{
        xtype:'mygrid'
    }]
}).show();
       ]]>
    </cmpScript>


</div>
