Ext.define('Student', {
    name : 'unnamed',
    extend: 'Ext.panel.Panel',
    alias: 'widget.student',
    text: 'Press Me',
    xtype: 'student',
    getName : function(){
        return "Student name is" + this.name;
    },
    config: {
        // ...
    },
    constructor : function(studentName){
        if(studentName)
            this.name = studentName;
    },
    // constructor: function(config) {
    //     this.initConfig(config);
    //     return this;
    // },
    initComponent:  function() {

    },
    init:function() { },
}, function(){
    console.log('Student object created');
});


Ext.create('widget.student', {
    /* ... */
});