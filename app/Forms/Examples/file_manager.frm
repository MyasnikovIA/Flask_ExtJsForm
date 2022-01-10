<div caption="Примеры использования контролов"  fullscreen="true">
    <style>
      .ico-test { background-color:#352788; width:15px; height:15px; background-image:none !important; }
    </style>

    <cmpScript>
       <![CDATA[

           Form.getAbsPathLeft = function(arguments) {
              let arr = [].slice.call(arguments);
              setCaption("absPathLeft",arr[1].data['abspath']);
              if (arr[1].data['isFile'] === true) {
                 setVar("selectFileLeft",arr[1].data['abspath']);
                 executeAction("GET_FILE_INFO")
              }
           }

           Form.getAbsPath = function(arguments) {
              let arr = [].slice.call(arguments);
              setCaption("absPath",arr[1].data['abspath']);
           }

           Form.getPropertyListLeft = function(arguments) {
              let arr = [].slice.call(arguments);
              setVar("selectFileLeft",arr[1].data);
              refreshDataSet("DS_TREE_LEFT");
           }

           Form.getPropertyList = function(arguments) {
              let arr = [].slice.call(arguments);
              setVar("selectFile",arr[1].data);
              refreshDataSet("DS_TREE");
           }

           Form.onSearchTreeItem = function(arguments) {
              let arr = [].slice.call(arguments);
              if (arr[1].getKey() == arr[1].ENTER) {
                  refreshDataSet("DS_TREE",function(rec){
                        console.log("rec",rec)
                  })
              }
           }

           Form.onSearchTreeItemLeft = function(arguments) {
              let arr = [].slice.call(arguments);
              if (arr[1].getKey() == arr[1].ENTER) {
                  refreshDataSet("DS_TREE_LEFT",function(rec){
                        console.log("rec",rec)
                  })
              }
           }
           refreshDataSet("DS_TREE_LEFT");
           refreshDataSet("DS_TREE");
       ]]>
    </cmpScript>

    <cmpDataSet name="DS_TREE_LEFT" activateoncreate="false">
       <![CDATA[
           import os
           dirname = LPUleft
           if 'leaf' in selectFileLeft:
                if selectFileLeft['leaf'] == False:
                    if 'abspath' in selectFileLeft:
                        dirname = selectFileLeft['abspath']
                    else:
                        dirname = "."
           LPUleft = dirname
           data=[]
           if len(searchItemLeft) == 0:
               files = os.listdir(dirname)
               fileObj = {}
               fileObj['text'] = ".."
               fileObj['abspath'] = os.path.abspath( os.path.join(dirname,".."))
               fileObj['iconCls'] = 'ico-test'
               data.append(fileObj)
               for file in files:
                    fileObj = {}
                    fileAbsalute = os.path.abspath( os.path.join(dirname,file))
                    fileObj['text'] = file
                    fileObj['abspath'] = fileAbsalute
                    if os.path.isfile(os.path.join(dirname,file)):
                        fileObj['leaf'] = True
                        fileObj['isFile'] = True
                    else:
                        fileObj['leaf'] = False
                        fileObj['isFile'] = False
                    data.append(fileObj)
           else:
                for root, dirs, files in os.walk(dirname):
                    for file in files:
                        fileAbsalute = os.path.abspath( os.path.join(root,file))
                        if searchItemLeft in fileAbsalute:
                            fileObj = {}
                            fileObj['text'] = file
                            fileObj['abspath'] = fileAbsalute
                            if os.path.isfile(os.path.join(root,file)):
                                fileObj['leaf'] = True
                                fileObj['isFile'] = True
                            else:
                                fileObj['leaf'] = False
                                fileObj['isFile'] = False
                            data.append(fileObj)
       ]]>
       <items name="LPUleft" src="LPUleft" srctype="session"  default="."/>
       <items name="searchItemLeft" src="searchItemLeft" srctype="ctrl"/>
       <items name="selectFileLeft" src="selectFileLeft" srctype="var" default=""/>
    </cmpDataSet>

    <cmpAction name="GET_FILE_INFO">
        <![CDATA[
                info = {}
                import os
                import datetime
                filename = selectFileLeft
                stats = os.stat(filename)
                info['size'] = stats.st_size
                info['datetime_change'] = f"{datetime.datetime.fromtimestamp(stats.st_mtime)}"
                info['datetime_create'] = f"{datetime.datetime.fromtimestamp(stats.st_ctime)}"
                info['datetime_open'] = f"{datetime.datetime.fromtimestamp(stats.st_atime)}"
        ]]>
        <items name="selectFileLeft" src="selectFileLeft" srctype="var" default=""/>
        <items name="info" srctype="var" />
    </cmpAction>

    <cmpDataSet name="DS_TREE" activateoncreate="false">
       <![CDATA[
           import os
           dirname = LPU
           if 'leaf' in selectFile:
                if selectFile['leaf'] == False:
                    if 'abspath' in selectFile:
                        dirname = selectFile['abspath']
                    else:
                        dirname = "."
           LPU = dirname
           data=[]
           if len(searchItem) == 0:
               files = os.listdir(dirname)
               fileObj = {}
               fileObj['text'] = ".."
               fileObj['abspath'] = os.path.abspath( os.path.join(dirname,".."))
               fileObj['iconCls'] = 'ico-test'
               data.append(fileObj)
               for file in files:
                    fileObj = {}
                    fileAbsalute = os.path.abspath( os.path.join(dirname,file))
                    fileObj['text'] = file
                    fileObj['abspath'] = fileAbsalute
                    if os.path.isfile(os.path.join(dirname,file)):
                        fileObj['leaf'] = True
                        fileObj['isFile'] = True
                    else:
                        fileObj['leaf'] = False
                        fileObj['isFile'] = False
                    data.append(fileObj)
           else:
                for root, dirs, files in os.walk(dirname):
                    for file in files:
                        fileAbsalute = os.path.abspath( os.path.join(root,file))
                        if searchItem in fileAbsalute:
                            fileObj = {}
                            fileObj['text'] = file
                            fileObj['abspath'] = fileAbsalute
                            if os.path.isfile(os.path.join(root,file)):
                                fileObj['leaf'] = True
                                fileObj['isFile'] = True
                            else:
                                fileObj['leaf'] = False
                                fileObj['isFile'] = False
                            data.append(fileObj)
       ]]>
       <items name="LPU" src="LPU" srctype="session"  default="."/>
       <items name="searchItem" src="searchItem" srctype="ctrl"/>
       <items name="selectFile" src="selectFile" srctype="var" default=""/>
    </cmpDataSet>
    <cmpPanel region="west" height="40%" split="true" width="50%" minSize="100" autoScroll="true" layout="border">
        <cmpfieldset region="north" title="Search">
           <cmpTextField name="searchItemLeft" value="" onspecialkey="Form.onSearchTreeItemLeft(arguments);"  height="25" width="100%"/>
           <cmpLabel text="_" name="absPathLeft"/>
        </cmpfieldset>
        <cmpTreePanel name="fileTreeLeft"  rootVisible="false" onitemdblclick=" Form.getPropertyListLeft(arguments);"  onitemclick=" Form.getAbsPathLeft(arguments);"   height="80%"  popupmenu="popupMenuDomTree" dataset="DS_TREE_LEFT" >
            <colum field='text' caption='Name' />
        </cmpTreePanel>
    </cmpPanel>
    <!--item region="east" collapsible="true" width="10" title="Details"  split="true"></item-->
    <cmpPanel region="center" height="40%" split="true" width="50%" minSize="100" autoScroll="true" layout="border"  name="demoBody">
        <cmpfieldset region="north" title="Search">
           <cmpTextField name="searchItem" value="" onspecialkey="Form.onSearchTreeItem(arguments);"  height="25" width="100%"/>
           <cmpLabel text="_" name="absPath"/>
        </cmpfieldset>
        <cmpTreePanel name="domTree"  rootVisible="false" onitemdblclick=" Form.getPropertyList(arguments);"  onitemclick=" Form.getAbsPath(arguments);"   height="80%"  popupmenu="popupMenuDomTree" dataset="DS_TREE" >
            <colum field='text' caption='Name' />
        </cmpTreePanel>
    </cmpPanel>
</div>
