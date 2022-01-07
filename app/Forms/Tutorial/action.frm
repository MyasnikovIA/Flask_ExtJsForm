<div caption="Примеры использования контролов" >
    <cmpScript>
       <![CDATA[
           Form.onClickBtn = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("imput argument fun", arr);
              executeAction("myAction", function(rec) {
                  console.log("rec",rec);
              })
           }
       ]]>
    </cmpScript>
    <cmpPanel>
        <cmpButton text="test" onclick="Form.onClickBtn(arguments);"/>
        <cmpTextField  name="MyTime" value="Все компоненты смещены вправо"  width="250"/>
    </cmpPanel>

    <cmpAction name="myAction" >
        <![CDATA[
           from datetime import datetime
           now = datetime.now()
           MyTime = now.strftime("%m/%d/%Y, %H:%M:%S")
           arr=["111","2222","3333"]
           obj={"aaa":"2222"}
           myInt=111
        ]]>
        <items name="MyTime" src="MyTime" srctype="ctrl"  default="0"/>
    </cmpAction>
</div>
