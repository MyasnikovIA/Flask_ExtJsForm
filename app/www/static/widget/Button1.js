Ext.Button1 = Ext.extend(Ext.BoxComponent, {
    hidden : false,
    disabled : false,
    pressed : false,
    enableToggle : false,
    menuAlign : 'tl-bl?',
    type : 'button',
    menuClassTarget : 'tr:nth(2)',
    clickEvent : 'click',
    handleMouseEvents : true,
    tooltipType : 'qtip',
    buttonSelector : 'button:first-child',
    scale : 'small',
    iconAlign : 'left',
    arrowAlign : 'right',
    initComponent : function() {
        Ext.Button.superclass.initComponent.call(this);
        this.addEvents('click','toggle','mouseover','mouseout','menushow','menuhide','menutriggerover','menutriggerout');
        if (this.menu) {
            this.menu = Ext.menu.MenuMgr.get(this.menu);
        }
        if (Ext.isString(this.toggleGroup)) {
            this.enableToggle = true;
        }
    },

    // private
    onRender : function(ct, position){
        if(!this.template){
            if(!Ext.Button.buttonTemplate){
                Ext.Button.buttonTemplate = new Ext.Template(
                    '<table id="{4}" cellspacing="0" class="x-btn {3}"><tbody class="{1}">',
                    '<tr><td class="x-btn-tl"><i>&#160;</i></td><td class="x-btn-tc"></td><td class="x-btn-tr"><i>&#160;</i></td></tr>',
                    '<tr><td class="x-btn-ml"><i>&#160;</i></td><td class="x-btn-mc"><em class="{2}" unselectable="on"><button type="{0}"></button></em></td><td class="x-btn-mr"><i>&#160;</i></td></tr>',
                    '<tr><td class="x-btn-bl"><i>&#160;</i></td><td class="x-btn-bc"></td><td class="x-btn-br"><i>&#160;</i></td></tr>',
                    '</tbody></table>');
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
        Ext.ButtonToggleMgr.register(this);
    },

    // private
    afterRender : function(){
        Ext.Button.superclass.afterRender.call(this);
        //this.useSetClass = true;
        //this.setButtonClass();
        //this.doc = Ext.getDoc();
    },

    setIconClass : function(cls){
        this.iconCls = cls;
        if(this.el){
            this.btnEl.dom.className = '';
            this.btnEl.addClass(['x-btn-text', cls || '']);
            this.setButtonClass();
        }
        return this;
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

Ext.reg('button1', Ext.Button1);
