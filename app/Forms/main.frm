<div caption="Примеры использования контролов" >
    <cmpScript>
       <![CDATA[
           Form.onclickItem = function(view, index, element, e) {
              console.log(view);
              console.log(index);
              console.log(element);
              console.log(e);
           }
       ]]>
    </cmpScript>

    <!--cmpTreepanel width="500" rootVisible="false" onclick="Form.onclickItem(view, index, element, e)"  ondblclick="Form.onclickItem(view, index, element, e)"-->
    <cmpTreepanel width="500" rootVisible="false" onitemclick=" console.log(view, index, element);  ">
         <colum field='text' caption='поле 1' />
         <colum field='duration'  caption='поле 2' >
            <colum field='text' caption='поле 1' />
            <colum field='text' caption='поле 1' />
            <colum field='text' caption='поле 1' />
         </colum>
         <colum field='isLayover' caption='поле 2' />
    </cmpTreepanel>
</div>
