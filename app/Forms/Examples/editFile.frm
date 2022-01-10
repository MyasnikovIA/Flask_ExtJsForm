<div caption="Редактировать файл"  fullscreen="true">

    <cmpScript>
       <![CDATA[
          console.log( getVar("editFile") );
          executeAction("GET_FILE_TEXT");

          Form.clsForm = function() {
             close({});
          }
          Form.SaveForm = function(_collb) {
             executeAction("SET_FILE_TEXT",_collb,true);
          }
          Form.SaveAndCloseForm = function() {
             Form.SaveForm(function(){
                 Form.clsForm();
             });
          }
       ]]>
    </cmpScript>



    <cmpAction name="GET_FILE_TEXT">
        <![CDATA[
           from codecs import open as openFile
           from os import path
           if path.exists(editFile):
              with openFile(editFile, 'r', encoding='utf8') as f:
                bodyText = f.read()

        ]]>
        <items name="bodyText" src="bodyText" srctype="ctrl" default=""/>
        <items name="isEdit" srctype="var" default="false" />
        <items name="editFile" srctype="var" />
    </cmpAction>


    <cmpAction name="SET_FILE_TEXT">
        <![CDATA[
           from os import path
           if path.exists(editFile):
               with open(editFile, "wb") as textFile:
                   textFile.write(bodyText.encode())
        ]]>
        <items name="bodyText" srctype="ctrl" default=""/>
        <items name="isEdit" srctype="var" default="false"/>
        <items name="editFile" srctype="var" />
    </cmpAction>

    <cmpTextareaField region="center" name="bodyText" width="100%" height="100%"></cmpTextareaField>
    <!--cmpHtmlEditor region="center" name="bodyText" width="100%" height="100%"></cmpHtmlEditor-->
    <cmpPanel region="south" height="25" layout="border"  >
         <cmpButton text="Отмена" name="fileinfo" region="west" onclick="Form.clsForm()"/>
         <cmpButton text="Сохранить" name="fileinfo" region="east" onclick="Form.SaveForm()" />
         <cmpButton text="Сохранить и закрыть" name="fileinfo" region="east" onclick="Form.SaveAndCloseForm()"/>
    </cmpPanel>

</div>