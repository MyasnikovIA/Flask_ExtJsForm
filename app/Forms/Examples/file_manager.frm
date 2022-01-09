<div caption="Примеры использования контролов"  fullscreen="true">
    <cmpScript>
       <![CDATA[
           Form.getPropertyList = function(arguments) {
              let arr = [].slice.call(arguments);
              console.log("GET imput argument fun", arr);
           }
           Form.onSearchTreeItem = function(arguments) {
              let arr = [].slice.call(arguments);
              if (arr[1].getKey() == arr[1].ENTER) {
                  refreshDataSet("DS_TREE")
              }
           }
           refreshDataSet("DS_TREE")
       ]]>
    </cmpScript>

    <cmpDataSet name="DS_TREE" activateoncreate="false">
       <![CDATA[
           import os
       ]]>
       <items name="LPU" src="LPU" srctype="session"  default="4444"/>
       <items name="DATE_FROM" src="DATE_FROM" srctype="var" default="111"/>
       <items name="searchItem" src="searchItem" srctype="ctrl"/>
    </cmpDataSet>


    <cmpPanel region="west" height="40%" split="true" width="20%" minSize="100" autoScroll="true" layout="border">
        <cmpfieldset region="north" title="Search">
           <cmpTextField name="searchItem" value="" onspecialkey="Form.onSearchTreeItem(arguments);"  height="25" width="100%"/>
        </cmpfieldset>
        <cmpTreePanel name="domTree"  rootVisible="false" onitemclick=" Form.getPropertyList(arguments);  " height="80%"  popupmenu="popupMenuDomTree" dataset="DS_TREE" >
            <colum field='text' caption='Name' />
            <colum field='value'  caption='Info' />
        </cmpTreePanel>
    </cmpPanel>
    <!--item region="east" collapsible="true" width="10" title="Details"  split="true"></item-->
    <cmpPanel region="center" name="demoBody">

    </cmpPanel>
</div>
