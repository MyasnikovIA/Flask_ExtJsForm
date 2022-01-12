Ext.define('Student', {
    name : 'unnamed',
    extend: 'Ext.panel.Panel',
    alias: 'widget.pressmebutton',
    text: 'Press Me',
    xtype: 'student',
    getName : function(){
        return "Student name is" + this.name;
    },
    config: {
        // ...
    },
    constructor: function(config) {
        this.initConfig(config);
        return this;
    },
    initComponent:  function() {

    }
}, function(){
    alert('Student object created');
});