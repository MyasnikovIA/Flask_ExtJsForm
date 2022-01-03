<div caption="Примеры использования контролов" >
    <cmpScript>
       <![CDATA[
           // https://metanit.com/web/extjs/7.9.php
           Form.mylert = function(){
              alert(3333);
           }
       ]]>
    </cmpScript>

    <cmpAction name="DS_COMBO" activateoncreate="false">
       <![CDATA[
           LPU = "66666"
           MyEdit = f"{MyEdit}={LPU}"
           id = "111111"
       ]]>
       <items name="LPU" src="LPU" srctype="session"  default="4444"/>
       <items name="DATE_FROM" src="DATE_FROM" srctype="var" default="111"/>
       <items name="MyEdit" src="MyEdit" srctype="ctrl"/>
    </cmpAction>

    <cmpPanel text="Expander component"  title='Центральная панель' region="north" margin='5 5 5 5'>
        <cmpTextfield name="MyEdit"/>
        <cmpButton text="test Action" handler="function(){ executeAction('DS_COMBO',function(){ alert('ok'); }); }" />
    </cmpPanel>
</div>
