<div caption="Примеры использования контролов" >
    <cmpScript>
       <![CDATA[
           // https://metanit.com/web/extjs/7.9.php
           Form.mylert = function(){
              alert(3333);
           }
           refreshDataSet('DS_COMBO');
       ]]>
    </cmpScript>
    <cmpDataSet name="DS_COMBO" activateoncreate="false">
       <![CDATA[
           data = []
           data.append({'value':10,'text':f"Входящяя переменная {DATE_FROM}" })
           data.append({'value':20,'text':f" Значение из контрола {MyEdit}" })
           data.append({'value':30,'text':"------" })
       ]]>
       <items name="LPU" src="LPU" srctype="session"/>
       <items name="DATE_FROM" src="DATE_FROM" srctype="var" default="111"/>
       <items name="MyEdit" src="MyEdit" srctype="ctrl"/>
    </cmpDataSet>

    <cmpPanel text="Expander component"  title='Центральная панель' region="north" margin='5 5 5 5'>
        <cmpTextfield name="MyEdit"/>
        <cmpCombobox fieldLabel="Параметры в теле"  width="420" fields="text,value" >
            <![CDATA[ [ {"value":10,"text":"зелен1" },{"value":20,"text":"зелен2" },{"value":30,"text":"зелен3" } ]  ]]>
        </cmpCombobox>

        <cmpCombobox fieldLabel="Параметры в теле"  width="420" fields="value,text"  url="json/tutorialdata.json"/>
        <cmpCombobox caption="Параметры в теле"  width="420"  valueField='text' displayField='value' url="json/tutorialdata.json"/>

        <cmpCombo fieldLabel="Параметры в теле"  width="420" fields="value,text" store='[{"value":10,"text":"зелен1" },{"value":20,"text":"зелен2" },{"value":30,"text":"зелен3" }]' />
        <cmpCombo fieldLabel="Параметры в теле"  width="420" fields="value,text" url="json/tutorialdata.json" />
        <cmpGrid title="Пользователи" height="250" width="500" fields="value,text" autoHeight="true"  url="json/tutorialdata.json">
             <colum  caption='поле 3'  width="330"/>
             <colum  caption='поле 4'  width="670"/>
        </cmpGrid>


        <cmpCombobox caption="dataset"  width="420"  valueField='text' displayField='value' dataset="DS_COMBO"/>
    </cmpPanel>
</div>
