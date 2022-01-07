<div caption="Примеры использования контролов" >
    <cmpScript>
       <![CDATA[
           // https://forum.sencha.com/forum/showthread.php?282834-Context-menu-using-Right-Mouse-Click-in-ExtJS4
           Form.onclickItem = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log(arr);
           }
           Form.onPOP = function(arguments) {
              console.log(arguments);
           }
           Ext.create('Ext.menu.Menu', {
                id:"testCtrl",
                items: [{
                            text: 'Menu One',
                            iconCls: 'edit'
                        }, {
                            text: 'Menu Two',
                            menu: {
                                xtype: 'menu',
                                items: [{
                                    text: 'Next Level'
                                },{
                                    text: 'Next Level'
                                },{
                                    text: 'Next Level'
                                }]
                            }
                        }, {
                            text: 'Menu Three',
                            scale: 'small'
                        }, {
                            text: 'Menu Four',
                            scale: 'small'
                }]
            })
            Ext.getCmp('testCtrl').showAt(200,200);
       ]]>
    </cmpScript>
    <cmpToolbar region="north" >
        <cmpRight/>
        <cmpTextField />
        <cmpButton>
             file
             <cmpButton onclick="showPopupMenu('myMain',200,200);">eeee</cmpButton>
        </cmpButton>
    </cmpToolbar>

    <item region="west"  collapsible="true"  width="150" title="test" split="true">111111111</item>
    <item region="south" collapsible="true"  width="150" title="test"  split="true">2222222222</item>

        <cmpGrid region="center" name="GridMain"   title="Пользователи"  onitemclick=" console.log(arguments);  " >
             <![CDATA[
                  [ {id:1,name:"11111111"}
                    ,{id:2,name:"2222222222222"}
                    ,{id:3,name:'3333333'}
                  ]
             ]]>
            <colum dataIndex='id' width="50" header='ID' />
            <colum dataIndex='name' width="500" header='Name' />
        </cmpGrid>

       <item region="east"  collapsible="true"  width="150" title="test"  split="true">
                <cmpTreepanel   rootVisible="false" onitemclick=" console.log(arguments);  " popupmenu="myMain">
                     <colum field='text' caption='поле 1' />
                     <colum field='duration'  caption='поле 2' >
                        <colum field='text' caption='поле 111111111111111111'/>
                        <colum field='text' caption='поле 1' />
                        <colum field='text' caption='поле 1' />
                     </colum>
                     <colum field='isLayover' caption='поле 2' />
                </cmpTreepanel>
       </item>
    <cmpPopupMenu name="myMain"  popupobject="GridMain" onpopup="Form.onPOP(arguments)">
        <item text="dddddddd" onclick="console.log('menu clicked');" />
        <item text="print" >
            <item text="22222" onclick="console.log('menu clicked');" />
            <item text="333333" onclick=" console.log('menu clicked');"  />
        </item>
    </cmpPopupMenu>
</div>
