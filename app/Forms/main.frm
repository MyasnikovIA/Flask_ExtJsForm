<div caption="Примеры использования контролов" >

  <style>
   body {
    background: url(https://bipbap.ru/wp-content/uploads/2017/11/best-new-year-wallpaper6-1-640x360.jpg) no-repeat;
    -moz-background-size: 100%; /* Firefox 3.6+ */
    -webkit-background-size: 100%; /* Safari 3.1+ и Chrome 4.0+ */
    -o-background-size: 100%; /* Opera 9.6+ */
    background-size: 100%; /* Современные браузеры */
   }
  </style>
    <cmpScript>
       <![CDATA[
           Form.onClickBtnGet = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("GET imput argument fun", arr);
              setVar('method','GET');
              executeAction("myAction", function() {
                  console.log("OK",getVar('arr'));
              })
           }
           Form.onClickBtnPost = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("POST imput argument fun", arr);
              setVar('method','POST');
              executeAction("myAction", function(obj) {
                  console.log("obj",obj);
                  console.log("OK",getVar('arr'));
              },true); // <== признак отправки сообщения POST запросом
            }
            function startClock(){
               var currentDate = new Date();
               time = currentDate.getHours() + ":" + currentDate.getMinutes() + ":" + currentDate.getSeconds();
               document.getElementById("p").innerHTML = time;
               setTimeout(startClock, 1000);
            }
            startClock();

       ]]>
    </cmpScript>
    <cmpAction name="myAction" >
        <![CDATA[
           from datetime import datetime
           now = datetime.now()
           MyTime = now.strftime("%m/%d/%Y, %H:%M:%S")
           MyTime = f"{MyTime} --- > {method} "
           arr=["111","2222","3333"]
           obj={"aaa":"2222"}
           myInt=111
        ]]>
        <items name="method" src="method" srctype="var"  default="0"/>
        <items name="MyTime" src="MyTime" srctype="ctrl"  default="0"/>
    </cmpAction>
    <item region="center"  bodyStyle="background: url(https://bipbap.ru/wp-content/uploads/2017/11/best-new-year-wallpaper6-1-640x360.jpg) no-repeat;-moz-background-size: 100%;-webkit-background-size: 100%;-o-background-size: 100%; background-size: 100%; " >
        http://libs.gisi.ru/ext-5.0.1/build/examples/
    </item>
    <cmpToolbar region="south" >
        <cmpButton>
             Пуск
             <cmpButton onclick="">
                 еуые
                 <cmpButton onclick="">Load form</cmpButton>
                 <cmpButton onclick="">Load form</cmpButton>
                 <cmpButton onclick="">Load form</cmpButton>
                 <cmpButton onclick="">Load form</cmpButton>
                 <cmpButton onclick="">Load form</cmpButton>
                 <cmpButton onclick="">Load form</cmpButton>
                 <cmpButton onclick="">Load form</cmpButton>
                 <cmpButton onclick="">Load form</cmpButton>
                 <cmpButton onclick="">Load form</cmpButton>
                 <cmpButton onclick="">Load form</cmpButton>
                 <cmpButton onclick="">Load form</cmpButton>
                 <cmpButton onclick="">
                         еуые
                         <cmpButton onclick="">Load form</cmpButton>
                         <cmpButton onclick="">Load form</cmpButton>
                         <cmpButton onclick="">Load form</cmpButton>
                         <cmpButton onclick="">Load form</cmpButton>
                         <cmpButton onclick="">Load form</cmpButton>
                         <cmpButton onclick="">Load form</cmpButton>
                         <cmpButton onclick="">Load form</cmpButton>
                         <cmpButton onclick="">Load form</cmpButton>
                         <cmpButton onclick="">Load form</cmpButton>
                         <cmpButton onclick="">Load form</cmpButton>
                         <cmpButton onclick="">Load form</cmpButton>
                         <cmpButton onclick="">Load form</cmpButton>
                 </cmpButton>
             </cmpButton>
             <cmpButton onclick="">Load form</cmpButton>
             <cmpButton onclick="">Load form</cmpButton>
             <cmpButton onclick="">Load form</cmpButton>
             <cmpButton onclick="">Load form</cmpButton>
             <cmpButton onclick="">Load form</cmpButton>
             <cmpButton onclick="">Load form</cmpButton>
             <cmpButton onclick="">Load form</cmpButton>
             <cmpButton onclick="">Load form</cmpButton>
             <cmpButton onclick="">Load form</cmpButton>
        </cmpButton>
        <cmpRight/>
        <cmplabel text="|"/>
        <cmplabel name="dateTimeLabel" text="dddddddd" id="p"  width="60" />
    </cmpToolbar>

</div>
