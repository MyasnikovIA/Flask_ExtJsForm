<div caption="Примеры использования контролов" >
    <cmpScript>
       <![CDATA[
           // https://metanit.com/web/extjs/7.9.php
           Form.mylert = function(){
              alert(3333);
           }
       ]]>
    </cmpScript>
    <cmpPanel text="Expander component"  title='Центральная панель' region="north" margin='5 5 5 5'>
        ------------------------
        <cmpCombobox fieldLabel="Параметры в теле"  width="420" fields="text,value" >
            <![CDATA[ [ {value:10,text:"зелен1" },{value:20,text:"зелен2" },{value:30,text:"зелен3" } ]  ]]>
        </cmpCombobox>
        <cmpCombobox fieldLabel="Параметры в теле"  width="420" fields="value,text"  url="json/tutorialdata.json"/>
        <cmpCombobox caption="Параметры в теле"  width="420"  valueField='text' displayField='value' url="json/tutorialdata.json"/>
        ------------------------
        <cmpCombo fieldLabel="Параметры в теле"  width="420" fields="value,text" store='[{value:10,text:"зелен1" },{value:20,text:"зелен2" },{value:30,text:"зелен3" }]' />
        <cmpCombo fieldLabel="Параметры в теле"  width="420" fields="value,text" url="json/tutorialdata.json" />

    </cmpPanel>
</div>
