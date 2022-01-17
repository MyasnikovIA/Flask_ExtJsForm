<div caption="Примеры использования контролов" >

    <cmpScript>
       <![CDATA[
            Form.getCtrl = function() {
                let login = getControl("Mylogin");
                console.log("login",login);
                login.show()
            }
       ]]>
    </cmpScript>

    <!--
    <item region="west" collapsible="true" width="350" title="Панель слева" split="true" name="panelLeft">
        <cmpTextField name="foundObjectText" value="барнаул"  region="north" onspecialkey="Form.onFoundObjectText();"  height="25" width="100%"/>
        <cmpTextField name="MyTime2"  region="north" onspecialkey="Form.onFoundObjectText();"  height="25" width="100%"/>
        <cmpButton text="getControl" onclick="Form.getCtrl();"/>
    </item>
-->
    <cmpButton text="getControl" onclick="Form.getCtrl();"/>
    <cmplogin name="Mylogin" region="center" ></cmplogin>

</div>
