console.log("Ext",Ext)

// Explicitly create a Container
Ext.create('Ext.container.Container', {
    layout: {
        type: 'hbox'
    },
    width: 400,
    renderTo: Ext.getBody(),
    border: 1,
    style: {borderColor:'#000000', borderStyle:'solid', borderWidth:'1px'},
    defaults: {
        labelWidth: 80,
        // implicitly create Container by specifying xtype
        xtype: 'datefield',
        flex: 1,
        style: {
            padding: '10px'
        }
    },
    items: [{
        xtype: 'datefield',
        name: 'startDate',
        fieldLabel: 'Start date'
    },{
        xtype: 'datefield',
        name: 'endDate',
        fieldLabel: 'End date'
    }]
});



Ext.define('Osm', {
     extend: 'Ext.Widget',
    alias : 'widget.osm',

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

 /*
Ext.define('osm', {
    extend: 'Ext.form.Panel',
    alias : 'widget.osm',
    controller: 'profile',
    items: [{
        xtype: 'textfield',
        reference: 'firstName',
        fieldLabel: 'First Name'
    }]
});


Ext.Osm = Ext.extend(Ext.Container, {
    initComponent : function(){  },
    createElement : function(name, pnode){ },
    onRender : function(ct, position){},
});

/*
Ext.Osm = Ext.extend(Ext.Container, {
    extend: 'Ext.Container',
    alias : 'widget.osm',
    baseCls : 'x-panel',
    collapsedCls : 'x-panel-collapsed',
    maskDisabled : true,
    headerAsText : true,
    buttonAlign : 'right',
    collapsed : false,
    collapseFirst : true,
    minButtonWidth : 75,
    elements : 'body',
    preventBodyReset : false,
    padding: undefined,
    resizeEvent: 'bodyresize',
    toolTarget : 'header',
    collapseEl : 'bwrap',
    slideAnchor : 't',
    disabledClass : '',

    layout: 'fit',
    autoShow: true,
 // private
    initComponent : function(){
        console.log("onRender",arguments)
        debugger
        this.callParent(arguments);
        // Ext.Panel1.superclass.initComponent.call(this);
        this.addEvents('bodyresize','titlechange','iconchange','collapse','expand','beforecollapse','beforeexpand','beforeclose','close','activate','deactivate');
    },
// private
    createElement : function(name, pnode){
        console.log("onRender",name, pnode)
        debugger
        if(this[name]){
            pnode.appendChild(this[name].dom);
            return;
        }
    },

    onRender : function(ct, position){
        console.log("onRender",ct, position)
        debugger
         if(!this.template){
            if(!Ext.Button.buttonTemplate){
                Ext.Button.buttonTemplate = new Ext.Template(
                    '<div>',
                    '<input value="111"/>',
                    '</div>',
                    );
                Ext.Button.buttonTemplate.compile();
            }
            this.template = Ext.Button.buttonTemplate;
        }
        var btn, targs = this.getTemplateArgs();

        if(position){
            btn = this.template.insertBefore(position, targs, true);
        }else{
            btn = this.template.append(ct, targs, true);
        }
        this.initButtonEl(btn, this.btnEl);
    },
    // private
    afterRender : function(){
        console.log("afterRender",arguments)
        // Ext.Button.superclass.afterRender.call(this);
    },
    // private
    beforeDestroy : function(){},
    // private
    onDestroy : function(){},
    // private
    doAutoWidth : function(){},
    // private
    onClick : function(e){},
});
// Ext.reg('osm', Ext.Osm);
*/