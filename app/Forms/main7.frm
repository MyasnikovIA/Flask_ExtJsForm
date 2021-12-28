<div caption="Примеры использования контролов" >
    <cmpScript>
       <![CDATA[
           Form.mylert = function(){
              alert(3333);
           }
       ]]>
    </cmpScript>

    <cmpScript>
       <![CDATA[
           Form.mylert2 = function(){
              alert(5555555);
           }
       ]]>
    </cmpScript>

    <cmpPanel text="Expander component"  title='Центральная панель' region="north" margin='5 5 5 5'>
        <cmpButton text="menu">
            <items  text="11111" onclick="alert(1)"></items>
            <items  text="33333" onclick="alert(2)"></items>
            <items  text="44444" onclick="Form.mylert()"></items>
            <items  text="55555" onclick="Form.mylert2()"></items>
        </cmpButton>
    </cmpPanel>
</div>
