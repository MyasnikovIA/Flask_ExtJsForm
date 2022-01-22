<div caption="Примеры использования контролов" >

    <cmpScript>
       <![CDATA[
           Form.onClickBtnGet5001 = function(arguments) {
              let arr = [].slice.call(arguments);
              openForm("http://192.168.15.200:5001/main.frm",true)
           }
           Form.onClickBtnGet9091 = function(arguments) {
              let arr = [].slice.call(arguments);
              openForm("http://192.168.15.200:5001/main.frm",true)
           }
           Form.onClickBtnGet90912 = function(arguments) {
              let arr = [].slice.call(arguments);
              openForm("http://192.168.15.200:9091/Examples/file_manager.frm",true)
           }
       ]]>
    </cmpScript>

    <cmpPanel region="center"   >
        <cmpButton text="Send 5001" onclick="Form.onClickBtnGet5001(arguments)"/>
        <cmpButton text="Send 9091" onclick="Form.onClickBtnGet9091(arguments)"/>
        <cmpButton text="Send onClickBtnGet90912" onclick="Form.onClickBtnGet90912(arguments)"/>
    </cmpPanel>


</div>
