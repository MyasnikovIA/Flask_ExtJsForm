<div caption="Примеры использования контролов"  fullscreen="true">
   <!--
   http://libs.gisi.ru/ext-5.0.1/build/examples/
   http://libs.gisi.ru/ext-5.0.1/build/examples/kitchensink/?theme=crisp-touch#breadcrumb-toolbar
   https://examples.sencha.com/extjs/6.6.0/examples/kitchensink/?modern#tree-cell-editing
   https://examples.sencha.com/extjs/6.2.0/examples/kitchensink/index.html#all
   https://examples.sencha.com/ExtWebComponents/7.5.0/kitchensink/#CalendarDaysView
   http://extjs.cachefly.net/ext-3.4.0/examples/
   http://extjs.cachefly.net/ext-3.4.0/examples/form/form-grid-access.html
   http://extjs.cachefly.net/ext-3.4.0/examples/feed-viewer/view.html
   http://www.boxed.cz/cal/build/examples/grid/group-summary-grid.html
   http://www.boxed.cz/cal/build/examples/charts-kitchensink/#basic-column
   http://www.boxed.cz/cal/build/examples/kitchensink/#sliding-pager
   http://www.boxed.cz/cal/build/examples/index.html#extModel24-10
   https://examples.sencha.com/extjs/7.5.0/examples/classic/aria/
   https://examples.sencha.com/extjs/7.5.0/examples/classic/executive-dashboard/#kpi/clicks
   https://examples.sencha.com/extjs/7.5.0/examples/admin-dashboard/#searchresults

   https://w2ui.com/web/docs/2.0/layout
   -->

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
           refreshDataSet("DS_TREE", function(rec) {
                console.log("rec",rec);
           })

       ]]>
    </cmpScript>

    <cmpDataSet name="DS_TREE" activateoncreate="false">
       <![CDATA[
           LPU = "66666"
           data = []
           components = {"text":"components","expanded": True,"children": []}
           data.append(components)
           components["children"].append({ 'leaf': True ,'value':10,'text':f"Входящяя переменная {DATE_FROM}",'myNefField':111111111 })

           #data.append({'value':10,'text':f"Входящяя переменная {DATE_FROM}",'myNefField':111111111 })
           #data.append({'value':20,'text':" Значение из контрола" })
           #data.append({'value':30,'text':f"------ {searchItem}" })
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
