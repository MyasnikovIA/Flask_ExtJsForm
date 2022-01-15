<div caption="Примеры использования контролов" >

    <cmpScript>
       <![CDATA[
           Form.onPOP = function(arguments) {
              let map = getControl('MyOsm').element
              console.log("getControl('MyOsm')",getControl('MyOsm'));
              console.log("map.clickPoint",map.clickPoint);
              console.log("map",map);
              //console.log("onPOP",arguments);
           }
       ]]>
    </cmpScript>

    <item region="north" collapsible="true" width="150" ><h1 class="x-panel-header" split="true">Page Title</h1></item>
    <item region="west" collapsible="true" width="150" title="Панель слева" split="true"></item>
    <item region="south" collapsible="true" width="150" title="Снизу"  split="true"></item>
    <item region="east" collapsible="true" width="150" title="Справа"  split="true"></item>

    <cmpOSM region="center" name="MyOsm" onclick="console.log('OpenStreetMap1.frm',arguments)"   split="true" >

    </cmpOSM>


    <cmpPopupMenu name="myMain"  popupobject="MyOsm" onpopup="Form.onPOP(arguments)">
        <item text="dddddddd" onclick="console.log('menu clicked');" />
        <item text="print" >
            <item text="22222" onclick="console.log('menu clicked');" />
            <item text="333333" onclick=" console.log('menu clicked');"  />
        </item>
    </cmpPopupMenu>

</div>
