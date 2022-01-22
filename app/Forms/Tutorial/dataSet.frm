<div caption="Примеры использования контролов" >
    <cmpScript>
       <![CDATA[
           Form.runDataSet = function(){
               setVar("DATE_FROM","test111"); // инициализация переменных
               setVar("MyEdit","test222");
               // JS запуск процесса получения данных из DataSet
               refreshDataSet('DS_GRID', function() {
                  alert('данные получены');
               });
           }
       ]]>
    </cmpScript>

    <!-- Блок Python кода (возвращает data массив и добавляет результат в компонент cmpGrid) -->
    <cmpDataSet name="DS_GRID" activateoncreate="false">
       <![CDATA[
           LPU = "66666"
           data = []
           data.append({'value':10,'text':f" Из переменной DATE_FROM: {DATE_FROM}" })
           data.append({'value':20,'text':f" Из переменной MyEdit: {MyEdit}" })
           data.append({'value':30,'text':"------" })
       ]]>
       <items name="LPU" src="LPU" srctype="session"  default="4444"/>
       <items name="DATE_FROM" src="DATE_FROM" srctype="var" default="111"/>
       <items name="MyEdit" src="MyEdit" srctype="var"/>
    </cmpDataSet>

    <cmpPanel text="Expander component"  title='Центральная панель' region="north" margin='5 5 5 5'>
        <cmpButton text="Запуск скрипта Python на стороне сервера" onclick="Form.runDataSet()" />
    </cmpPanel>

    <cmpGrid title="Пользователи" height="250" width="500" fields="value,text" autoHeight="true"   dataset="DS_GRID">
       <colum  caption='поле 3'  width="330"/>
       <colum  caption='поле 4'  width="670"/>
    </cmpGrid>

</div>