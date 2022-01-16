<div caption="Примеры использования контролов" >

    <cmpScript>
       <![CDATA[
           Form.activeMap = null;
           Form.onPOP = function(arguments) {
              Form.activeMap = getControl('MyOsm');
              let jsonInfo = Form.activeMap.getInfo();
              setCaption('objectInfo', JSON.stringify(jsonInfo,null, 4))
           }

           // Установить  метку на карте
           Form.onSetLabel = function(){
              let map = getControl('MyOsm');
              map.appLabel("<br/><h3>текст метки</h3>","подсказка",function(){

              });
           };
           Form.onDeleteLabel = function() {
              getControl('MyOsm').delLabel();
           }
           Form.onClrLabel = function() {
              getControl('MyOsm').delLabels();
           }


           //  получить информацию об выбранном гео-объекте
           Form.onGetInfo = function() {
                let jsonInfo = getControl('MyOsm').getInfo()
                setCaption('objectInfo', JSON.stringify(jsonInfo,null, 4))
           }
           Form.onFoundObjectText = function() {
                let map = getControl('MyOsm');
                let jsonResult = map.foundObject(getValue('foundObjectText'))
                for (let ind = 0; ind < jsonResult.length; ++ind) {
                    let tmpObj = {'lat':jsonResult[ind]['lat'],'lng':jsonResult[ind]['lon']};
                    map.appLabel( tmpObj, jsonResult[ind]['display_name']);
                    console.log(  'tmpObj',tmpObj );
                    console.log( ' jsonResult[ind]', jsonResult[ind] );
                }
           }

       ]]>
    </cmpScript>
    <item region="west" collapsible="true" width="350" title="Панель слева" split="true">
        <cmpTextField name="foundObjectText" value="барнаул"  region="north" onspecialkey="Form.onFoundObjectText();"  height="25" width="100%"/>
        <cmpLabel region="center" name="objectInfo"  text="---"/>
    </item>
    <cmpOSM region="center" name="MyOsm" onclick="Form.onGetInfo()"   split="true" >

    </cmpOSM>

    <cmpPopupMenu name="myMain"  popupobject="MyOsm" onpopup="Form.onPOP(arguments)">
        <item name="addLabel" text="Установить метку" onclick="Form.onSetLabel();" />
        <item name="delLabel" text="Удалить метку" onclick="Form.onDeleteLabel();" />
        <item name="clrAllLabel" text="Очистить все метки" onclick="Form.onClrLabel();" />
        <item name="getInfo" text="Получить информацию об объекте" onclick="Form.onGetInfo();" />
    </cmpPopupMenu>

</div>
