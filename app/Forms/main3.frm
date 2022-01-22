<div caption="Примеры использования контролов" >
    <cmpPanel text="Expander component"  title='Центральная панель' region="north" margin='5 5 5 5'>
        <cmpTextfield name="MyEdit"/>
        qqqqqqqqqqqqqqqqqqqqqqq
        wwwwwwwwwwwwwww
        er
        <Buttons>
            <cmpItem text="New User Register" scale="medium" handler="function(){ alert( getValue('MyEdit') ); }"/>
            <cmpitem text="New User Register111" scale="medium" handler="function(){  setValue('MyEdit',111);  }"></cmpitem>
            <cmpitem text="RETURN" scale="medium" handler="function(){ close({aa:111})  }"></cmpitem>
        </Buttons>
    </cmpPanel>
</div>
