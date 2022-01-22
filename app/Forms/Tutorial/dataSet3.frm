<div caption="Примеры использования контролов" >
    <cmpScript>
       <![CDATA[
           // https://metanit.com/web/extjs/7.9.php
           Form.mylert = function(){
              alert(3333);
           }
       ]]>
    </cmpScript>
    <cmpDataSet name="DS_COMBO" activateoncreate="false">
       <![CDATA[
           LPU = "66666"
           data = []
           data.append({'value':10,'text':f"Входящяя переменная {DATE_FROM}" })
           data.append({'value':20,'text':f" Значение из контрола {MyEdit}" })
           data.append({'value':30,'text':"------" })
       ]]>
       <items name="LPU" src="LPU" srctype="session"  default="4444"/>
       <items name="DATE_FROM" src="DATE_FROM" srctype="var" default="111"/>
       <items name="MyEdit" src="MyEdit" srctype="ctrl"/>
    </cmpDataSet>

    <cmpPanel text="Expander component"  title='Центральная панель' region="north" margin='5 5 5 5'>
        <cmpTextfield name="MyEdit"/>
        <cmpButton text="test dataset" handler="function(){ refreshDataSet('DS_COMBO',function(){ alert('ok'); }); }" />
        <cmpCombobox caption="dataset"  width="420"  valueField='text' displayField='value' dataset="DS_COMBO"/>
    </cmpPanel>

    <cmpGrid title="Пользователи" height="250" width="500" fields="value,text" autoHeight="true"   dataset="DS_COMBO">
       <colum  caption='поле 3'  width="330"/>
       <colum  caption='поле 4'  width="670"/>
    </cmpGrid>

</div>
