<div caption="Примеры использования контролов" >
    <cmpScript>
       <![CDATA[
            Form.getCtrl = function() {
                let login = getControl("Mylogin");
                login.show()
                console.log("login",login);
            }
       ]]>
    </cmpScript>
    <cmpPanel>
        <cmpButton text="getControl" onclick="Form.getCtrl();"/>
    </cmpPanel>
    <cmplogin name="Mylogin" region="center" ></cmplogin>
</div>
