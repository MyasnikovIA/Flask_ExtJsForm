<div caption="Примеры использования контролов" >
    <cmpPanel text="Expander component"  title='Центральная панель' region="north" margin='5 5 5 5'>
        <cmpTextfield name="MyEdit" value="https://metanit.com/web/extjs/3.php"/>
        <cmpTextfield name="MyEdit2" width="80%" height="20%" value="https://docs.sencha.com/extjs/6.2.1/classic/Ext.form.field.ComboBox.html"/>
        <cmpCombobox fieldLabel="Выберите язык" name="MyCombo"  valueField='myId' displayField='myText' queryMode='local' />
        <cmpButton text="11111" onclick="alert(1)"/>

        <cmpButton text="menu">

        </cmpButton>

        <Buttons>
            <item text="New User Register" scale="medium" handler="function(){ alert( getValue('MyEdit') ); }"/>
            <item text="New User Register111" scale="medium" handler="function(){  setValue('MyEdit',111);  }"></item>
            <item text="open openWindow" scale="medium" handler="function(){  openForm('main3',false);  }"></item>
            <item text="--!!!!!!!!open openForm modal!!!" scale="medium" handler="function(){  openForm('main3',true,{width: 800,height: 600,vars:{aaa:111,bbb:222,ccc:333},onclose:function(mod){console.log('OK',mod);}}); }" ></item>
        </Buttons>
    </cmpPanel>
</div>
