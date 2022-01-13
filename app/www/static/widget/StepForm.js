StepForm = Ext.extend(Ext.Panel,{
    constructor:function(conf){
        var items = conf.items;  //点击左边连接可以切换的不同的表单，
        var number = conf.number; //列表是否显示数字
        var activeTab = conf.activeTab;    //加载时的默认活动标签
        var ltitle = conf.ltitle;   //z左边标题
        var rtitle = conf.rtitle;   //右边标题
        var navWidth = conf.navWidth; //导航栏的宽度
        var count = activeTab;  //记录当前活动项的索引
        if(activeTab>items.length-1) {
            alert("activeTab值大于items的数量");
            return;
        }
        var link = "";     //显示在左边的列表html内容
        var bodys = new Array();
        for(var i=0; i<items.length; i++){
            var item = items[i];
            if(number){
                if(activeTab == i){
                    link += "<a id='alink"+i+"' href='0' mce_href='0' style='display:block;cursor:pointer;padding:5px 10px;text-decoration:none;font-size:14px;font-weight:bold' mce_style='display:block;cursor:pointer;padding:5px 10px;text-decoration:none;font-size:14px;font-weight:bold'>"+(i+1)+"."+item.title+"</a><br/>";
                }else{
                    link += "<a id='alink"+i+"' href='0' mce_href='0' style='display:block;cursor:pointer;padding:5px 10px;text-decoration:none;font-size:12px' mce_style='display:block;cursor:pointer;padding:5px 10px;text-decoration:none;font-size:12px'>"+(i+1)+"."+item.title+"</a><br/>";
                }
            }else{
                if(activeTab == i){
                    link += "<a id='alink"+i+"' href='0' mce_href='0' style='display:block;cursor:pointer;padding:5px 10px;text-decoration:none;font-size:14px;font-weight:bold' mce_style='display:block;cursor:pointer;padding:5px 10px;text-decoration:none;font-size:14px;font-weight:bold'>"+item.title+"</a><br/>";
                }else{
                    link += "<a id='alink"+i+"' href='0' mce_href='0' style='display:block;cursor:pointer;padding:5px 10px;text-decoration:none;font-size:12px' mce_style='display:block;cursor:pointer;padding:5px 10px;text-decoration:none;font-size:12px'>"+item.title+"</a><br/>";
                }
            }
            //将表单收集到bodys数组
            var forms = item.items;
            if(!forms){
                alert("缺少items属性");
                return;
            }
            var form = item.items[0];
            form.id = "form"+i;
            if(activeTab != i){
                form.hidden = true;
            }else{
                form.hidden = false;
            }
            bodys.push(form);
        }

        StepForm.superclass.constructor.apply(
            this,[{
                width:conf.width,
                height:conf.height,
                layout:'border',
                items:[
                    new Ext.Panel({
                        id:'nav',
                        title:ltitle,
                        region:'west',
                        width:navWidth,
                        html:link
                    }),
                    new Ext.Panel({
                        title:rtitle,
                        height:conf.height,
                        layout:'fit',
                        region:'center',
                        items:bodys
                    }),
                    new Ext.Panel({
                        autoHeight:true,
                        region:'south',
                        bbar:new Ext.Toolbar([
                            {xtype:'tbfill'},
                            {xtype:'button',id:'prev',text:'上一步',handler:function(){
                                navFun(count-1);
                            }},
                            {xtype:'button',id:'next',text:'下一步',handler:function(){
                                navFun(count+1);
                            }}
                        ])
                    })
                ]
            }]
        );
        var navFun = function(index){
            if(index < 0) {
                index = 0;
                count = 0;
            }
            if(index > bodys.length-1){
                index = bodys.length - 1;
                count = bodys.length - 1;
            }
            for(var i=0; i<bodys.length; i++){
                if(i == index){
                    Ext.getCmp("form"+i).show(true);
                    Ext.get("alink"+i).dom.style.fontSize = "14px";
                    Ext.get("alink"+i).dom.style.fontWeight = "bold";
                }else{
                    Ext.getCmp("form"+i).hide(true);
                    Ext.get("alink"+i).dom.style.fontSize = "12px";
                    Ext.get("alink"+i).dom.style.fontWeight = "normal";
                }
            }
            count = index;
        };
        this.bodys = bodys;
        this.activeTab = activeTab;
        this.navigate = navFun;
    },
    register:function(){
        var activeItem = Ext.get("alink"+this.activeTab).dom.innerHTML;
        var delegate = this.navigate;
        //给左边导航添加单击事件
        for(var i=0; i<this.bodys.length; i++){
            Ext.get("alink"+i).on("click",function(e){
                var i = e.target.id.substring(5);
                delegate(i);
            });
        }

    }
});
Ext.reg('stepform', StepForm);