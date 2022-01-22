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

        <cmpRadiogroup fieldLabel="пол" >
            <items  boxLabel="Мужской" name="gender" inputValue="male"></items>
            <items  boxLabel="Женский" name="gender" inputValue="female"></items>
        </cmpRadiogroup>

        <cmpRadiogroup fieldLabel="пол" columns="2" vertical="true">
            <items  boxLabel="Капуста" name="veg" inputValue="cabbage"></items>
            <items  boxLabel="Морковь" name="veg" inputValue="carrot"></items>
            <items  boxLabel="Свекла" name="veg" inputValue="beat"></items>
            <items  boxLabel="Лук" name="veg" inputValue="onion"></items>
        </cmpRadiogroup>

        <cmpCheckboxGroup fieldLabel="пол" columns="2" vertical="true">
            <cmpCheckbox  boxLabel="Капуста" name="veg" inputValue="cabbage" checked='true'></cmpCheckbox>
            <cmpCheckbox  boxLabel="Морковь" name="veg" inputValue="carrot" ></cmpCheckbox>
            <cmpCheckbox  boxLabel="Свекла" name="veg" inputValue="beat"></cmpCheckbox>
            <cmpCheckbox  boxLabel="Лук" name="veg" inputValue="onion"></cmpCheckbox>
        </cmpCheckboxGroup>

        <cmpDatefield  fieldLabel='Выбрать дату' padding="10"  format="d/m/Y" altFormats='d m Y|d.m.Y'  value="new Date()" ></cmpDatefield>

        <cmpNumberField  fieldLabel='Выбрать число' value="111" ></cmpNumberField>
        <cmpNumberField  fieldLabel='Выберите число' value="11"  minValue= "-5" maxValue= "100" allowDecimals= "true" decimalPrecision= "1" step= "0.5"></cmpNumberField>

        <cmpSlider  fieldLabel='Громкость' value="10"  minValue= "0" maxValue= "100" increment="10"  width="400" ></cmpSlider>

        <cmpButton text="menu">
            <items  text="11111" onclick="alert(1)"></items>
            <items  text="33333" onclick="alert(2)"></items>
            <items  text="44444" onclick="Form.mylert()"></items>
            <items  text="55555" onclick="Form.mylert2()"></items>
        </cmpButton>

        <cmpCombo fieldLabel ="Параметры в атрибутах" width="320" queryMode="local" name='division' autoSelect="true" forceSelection="true" store="[10,20,30]" />

        <cmpCombo fieldLabel ="Параметры в атрибутах" width="320" queryMode="local" name='division' autoSelect="true" forceSelection="true" store="{'key':'','value':''}" />
        <cmpCombo fieldLabel ="Параметры в теле" width="320" queryMode="local" name='division' autoSelect="true" forceSelection="true" displayField='text' valueField='value' >
            <![CDATA[ [10 ,20,30, 400 ]  ]]>
        </cmpCombo>

        <cmpCombo fieldLabel ="Параметры в теле" width="320" queryMode="local" name='division' autoSelect="true" forceSelection="true" displayField='text' valueField='value' >
            <![CDATA[ [{"text":'поле 1','value':'1111'},{"text":'поле 2','value':'2222'}]  ]]>
        </cmpCombo>

        <cmpCombobox fieldLabel="Параметры в теле"  width="420" valueField='value' displayField='text'   queryMode='local'>
            <![CDATA[ [ {'value':10,'text':"зелен1" },{'value':20,'text':"зелен2" },{'value':30,'text':"зелен3" } ]  ]]>
        </cmpCombobox>

        <cmpCombobox fieldLabel="Параметры в теле JS функци" width="420"  valueField='value' displayField='text'   queryMode='local'>
            <![CDATA[  getJsonUrl('json/tutorialdata.json')  ]]>
        </cmpCombobox>

        <cmpCombobox fieldLabel="Выберите язык" width="420" valueField='value' displayField='text' queryMode='local'>
            <cmpItem value="10" text="зелен"/>
            <cmpItem value="20" text="РОс"/>
            <cmpItem value="30" text="-ыафва"/>
        </cmpCombobox>

       <cmpCombobox fieldLabel="Выберите язык" width="420" valueField='value' displayField='text' >
            <store value="10" text="зелен1111"/>
            <store value="20" text="РОс222"/>
            <store value="30" text="-ыафва333"/>
        </cmpCombobox>
        <cmpCombobox fieldLabel="Использование URL " width="420" valueField='value' displayField='text' queryMode='local' url="json/tutorialdata.json"/>
    </cmpPanel>
</div>
