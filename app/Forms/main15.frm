<div caption="Примеры использования контролов" >

    <cmpScript>
       <![CDATA[


Ext.define('Student', {
    name : 'unnamed',
    extend: 'Ext.panel.Panel',
    alias: 'widget.pressmebutton',
    text: 'Press Me',
     xtype: 'Student',
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


/*
Ext.define('Student',
{
    name : 'unnamed',
    getName : function(){
        return "Student name is" + this.name;
    }
}, function(){
    alert('Student object created');
});

var myComputer = Ext.create('widget.Student', {
     hardware:'MacBook Pro',
     os:'Mac OS X',
     price:1800
});
*/

       ]]>
    </cmpScript>

    <item region="center"   >
        <cmpStudent  />
    </item>


</div>
