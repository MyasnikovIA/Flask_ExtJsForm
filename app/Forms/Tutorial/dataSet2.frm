<div caption="Примеры использования контролов" >
    <cmpScript>
       <![CDATA[
           Form.onClickBtnGET = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("imput argument fun", arr);
              console.log( getDataSet("myDataSet") );
              refreshDataSet("myDataSet", function(rec) {
                  console.log("rec",rec);
              })
           }

           Form.onClickBtnPOST = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("imput argument fun", arr);
              console.log( getDataSet("myDataSet") );
              refreshDataSet("myDataSet", function(rec) {
                  console.log("rec",rec);
              },true);
           }
           refreshDataSet("myDataSet", function(rec) {
                console.log("rec",rec);
           })
       ]]>
    </cmpScript>
    <cmpPanel>
        <cmpButton text="onClickBtnGET" onclick="Form.onClickBtnGET(arguments);"/>
        <cmpButton text="onClickBtnPOST" onclick="Form.onClickBtnPOST(arguments);"/>
        <cmpGrid dataset="myDataSet"  height="250" >
             <colum field='id'   caption='поле 1'  width="100"/>
             <colum field='name' caption='поле 2'  width="150"/>
        </cmpGrid>
    </cmpPanel>

    <cmpDataSet name="myDataSet" typ="js">
        <![CDATA[
           from datetime import datetime
           now = datetime.now() # current date and time
           LPU=str( int(LPU)+1 )
           data= [ {'id':1,'name':now.strftime("%m/%d/%Y, %H:%M:%S")},{'id':2,'name':"2222222222222"},{'id':3,'name':'3333333'+LPU} ];
        ]]>
        <items name="LPU" src="LPU" srctype="session"  default="0"/>
    </cmpDataSet>
</div>
