'use strict'

 /**
       loadScript("/engine/classes/js/jquery.pickmeup.min.js").then(function(){
           console.log("js ready");
       },function(error){
           console.log(error);
       })

       loadCSS("/engine/classes/css/pickmeup.min.css").then(function(){
           console.log("css ready");
       },function(error){
           console.log(error);
       })
 */

    window.loadScript = function(src,_timeout) {
           return new Promise(function(resolve, reject){
               if(!src){
                   reject(new TypeError("filename is missing"));
                   return;
               }
               var script=document.createElement("script"), timer, head=document.getElementsByTagName("head")[0];
               head.appendChild(script);
               function leanup(){
                   clearTimeout(timer);
                   timer=null;
                   script.onerror=script.onreadystatechange=script.onload=null;
               }
               function onload(){
                   leanup();
                   if(!script.onreadystatechange||(script.readyState&&script.readyState=="complete")){
                       resolve(script);
                   }
               }
               script.onerror=function(error){
                   leanup();
                   head.removeChild(script);
                   script=null;
                   reject(new Error("network"));
               };

               if (script.onreadystatechange === undefined) {
                   script.onload = onload;
               } else {
                   script.onreadystatechange = onload;
               }

               timer=setTimeout(script.onerror,_timeout||30000);
               script.setAttribute("type", "text/javascript");
               script.setAttribute("src", src);
           });
       }

       function loadCSS (src, _timeout) {
           var css = document.createElement('link'), c = 1000;
           document.getElementsByTagName('head')[0].appendChild(css);
           css.setAttribute("rel", "stylesheet");
           css.setAttribute("type", "text/css");
           return new Promise(function(resolve, reject){
               var c=(_timeout||10)*100;
               if(src) {
                   css.onerror = function (error) {
                       if(timer)clearInterval(timer);
                       timer = null;

                       reject(new Error("network"));
                   };

                   var sheet, cssRules, timer;
                   if ('sheet' in css) {
                       sheet = 'sheet';
                       cssRules = 'cssRules';
                   }
                   else {
                       sheet = 'styleSheet';
                       cssRules = 'rules';
                   }
                   timer = setInterval(function(){
                       try {
                           if (css[sheet] && css[sheet][cssRules].length) {
                               clearInterval(timer);
                               timer = null;
                               resolve(css);
                               return;
                           }
                       }catch(e){}

                       if(c--<0){
                           clearInterval(timer);
                           timer = null;
                           reject(new Error("timeout"));
                       }
                   }, 10);

                   css.setAttribute("href", src);
               }else{
                   reject(new TypeError("filename is missing"));
               }
           });
       }


// Преобразование строки в функцию
if (typeof String.prototype.parseFunction != 'function') {
    String.prototype.parseFunction = function () {
        var funcReg = /function *\(([^()]*)\)[ \n\t]*{(.*)}/gmi;
        var match = funcReg.exec(this.replace(/\n/g, ' '));
        if(match) {
            return new Function(match[1].split(','), match[2]);
        }
        return null;
    };
}

// Преобразование  функций объекта в строку (рекурсия)
function objectToStr(obj) {
    getProp(obj);
    function getProp(o) {
        for(var prop in o) {
            if(typeof(o[prop]) === 'object') {
                getProp(o[prop]);
            } else {
               if (typeof(o[prop]) === 'function') {
                  o[prop] = o[prop].toString()
               }
            }
        }
    }
}

// Рекурсивно проходим по всему объекту и  конвертируем строку в JS функцию
function objectPreprocessing(obj) {
    getProp(obj);
    function getProp(o) {
        for(var prop in o) {
            if(typeof(o[prop]) === 'object') {
                getProp(o[prop]);
            } else {
               if ((typeof(o[prop]) === 'string') && (o[prop].substr(0, 9) === 'function(' )) {
                  o[prop] =o[prop].parseFunction();
               }
            }
        }
    }
}


function getJsonUrl(url) {
    let xhr = new CreateRequest();
    xhr.open('GET', url, false);
    xhr.send();
    if (xhr.status != 200) {
      console.log( xhr.status + ': ' + xhr.statusText );
      return {'error':xhr.status + ' : ' + xhr.statusText} ;
    } else {
      return JSON.parse(xhr.response);
    }
}

function CreateRequest() {
    var Request = false;

    if (window.XMLHttpRequest)
    {
        //Gecko-совместимые браузеры, Safari, Konqueror
        Request = new XMLHttpRequest();
    }
    else if (window.ActiveXObject)
    {
        //Internet explorer
        try
        {
             Request = new ActiveXObject("Microsoft.XMLHTTP");
        }
        catch (CatchException)
        {
             Request = new ActiveXObject("Msxml2.XMLHTTP");
        }
    }

    if (!Request)
    {
        alert("Невозможно создать XMLHttpRequest");
    }

    return Request;
}
function sendSrv(url, data, colbackFun) {
    if (typeof(data) === 'undefined') data = null;
    if (typeof(colbackFun) === 'undefined') colbackFun = null;
    var request = new XMLHttpRequest(); // CreateRequest();
    //request.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=utf-8");
    if (typeof(colbackFun) === 'function'){
       request.open('POST', url, true);  // `false` makes the request synchronous
       request.setRequestHeader('Content-type', 'application/json');
       // request.setRequestHeader('Content-type', 'application/json');
       request.onreadystatechange = function() {
          if (this.statusText === "OK") {
             colbackFun(this.responseText);
             return;
          }
       };
       request.send(JSON.stringify(data));
       return request;
    } else {
        request.open('POST', url, false);  // `false` makes the request synchronous
        request.setRequestHeader('Content-type', 'application/json; charset=utf-8');
        request.send(JSON.stringify(data));
        if (request.status === 200) {
          return request.responseText;
        }
    }
    //delete request;
}

function ctrlDataSetExecute(_dom,datsetName) {
   console.log("ctrlDataSetExecute,_dom",_dom)
   let winObj = Ext.getCmp(_dom['mainForm'])
   return new Ext.data.Store({
        fields: [], // Поля, доступные в массиве данных
        data: []
    })
}



function refreshDataSet(_dom,datsetName,collbackFun){

}
function getExtDataStore(_dom,data) {

    Ext.Ajax.request({
        method: "POST",
        url: url,
        jsonData:  obj,
        success: function (response) {
            alert('success: ' + response.responseText);
        },
        failure: function (e, jqxhr) {
            alert('failure!');
            alert(e.status);
        }
    });

   console.log("ctrlDataSetExecute,_dom",_dom)
   let winObj = Ext.getCmp(_dom['mainForm'])
   return new Ext.data.Store({
        fields: [], // Поля, доступные в массиве данных
        data: []
    })
}


window.ExtObj={};
function getVar(_dom,propName,value) {
   if (typeof(value) === 'undefined') {
      value = null;
   }
   let winObj = Ext.getCmp(_dom['mainForm'])
   if (typeof(winObj['vars']) === 'undefined') {
       winObj['vars'] = {};
       return value;
   }
   if (typeof(winObj['vars'][propName]) === 'undefined') {
       return value;
   }
   return winObj['vars'][propName];
}

function setVar(_dom,propName,value) {
   let winObj = Ext.getCmp(_dom['mainForm'])
   if (typeof(winObj['vars']) === 'undefined') {
       winObj['vars'] = {};
   }
   if (typeof(value) === 'undefined') {
      value = null;
   }
   winObj['vars'][propName] = value
}

function setValue(_dom,propName,value){
    if (typeof(value) === 'undefined') {
      value = null;
    }
    let winObj = Ext.getCmp(_dom['mainForm'])
    let ctrlObj = winObj.query('[name='+propName+']');
    if (ctrlObj) {
       ctrlObj[0].setValue(value);
       return
    }
    console.log("error","контрол с именем "+propName+" нет на форме");
}

function getValue(_dom,propName,value){
   if (typeof(value) === 'undefined') {
      value = null;
   }
   let winObj = Ext.getCmp(_dom['mainForm'])
   let ctrlObj = winObj.query('[name='+propName+']');
   if (ctrlObj) {
      return ctrlObj[0].getValue(value);
   }
   console.log("error","контрол с именем "+propName+" нет на форме");
   return value
}

function getControl(_dom, propName) {
   let winObj = Ext.getCmp(_dom['mainForm'])
   let ctrlObj = winObj.ComponentQuery.query('[name='+propName+']');
   if (ctrlObj) {
      return ctrlObj[0];
   }
   console.log("error","контрол с именем "+propName+" нет на форме");
}

function close(_dom,mod) {
   let ctrlObj = Ext.getCmp(_dom['mainForm'])
   if (typeof(ctrlObj['parentEvent']) === 'object' ){
       if (typeof(ctrlObj['parentEvent'].onclose) === 'function' ){
          ctrlObj['parentEvent'].onclose(mod);
       }
   }
   if (typeof(ctrlObj.close) === 'function'){
      ctrlObj.close();
   } else {
      ctrlObj.destroy()
   }
}

// функция открытия формы через подгрузку JS файла (работает долго)
function openForm() {
     if (typeof(window.ExtObj)==='undefined') window.ExtObj = {};
     if (typeof(window.ExtObj["FormsObject"])==='undefined') window.ExtObj["FormsObject"] = {};
     if (arguments.length === 0) return;
     let formName = "";
     let isModalWin = false;
     let objectQuery = {};
     let renderTo = Ext.getBody();
     let arr = [].slice.call(arguments); // Перегружаем все аргументы в массив
     let _domParent = null;
     if (typeof(arr[0]) === 'object') {
        _domParent = arr.splice(0, 1)[0];
     }
     if (typeof(arr[0]) === 'string') {
        formName = arr.splice(0, 1)[0];
     }
     if (typeof(arr[0]) === 'boolean') {
        isModalWin = arr.splice(0, 1)[0];
     }
     if (typeof(arr[0]) === 'object') {
        objectQuery = arr.splice(0, 1)[0];
     }
     if(formName.length === 0) return;
     var objectOnEvent = {};
     for (let key in objectQuery){
        if (typeof(objectQuery[key]) === 'function') {
           if (key.substr(0, 2) === 'on' ) {
              objectOnEvent[key] = objectQuery[key];
              delete objectQuery[key]
           }
        }
     }
     if (isModalWin){
        objectQuery['isModal'] = true;
     }
     objectQuery["parentFrom"] = null;
     if (_domParent!=null) {
        objectQuery["parentFrom"] = _domParent["mainForm"];
     }
     var rightNow = new Date();
     var dateText = rightNow.toISOString().slice(0,10).replace(/-/g,"");
     objectToStr(objectQuery); // конвертируем JS функции в строку
     if (formName.indexOf('.') === -1) {formName+=".frm"}
     window.ExtObj["FormsObject"][formName]=objectOnEvent; // пробрасываем события между модальными окнами внутри одного физического окна
     localStorage.setItem("ExtJsFormVars:"+formName, JSON.stringify(objectQuery)); // необходимо для проброса переменных между окнами
     loadScript(formName+"?type=js&data="+JSON.stringify(objectQuery) ).then(function(script){
         if ((!isModalWin) && (_domParent !== null ) && (typeof(_domParent["mainForm"]) !=='undefined')) {
             Ext.getCmp(_domParent["mainForm"]).destroy() // уничтожаем родителя
         }
     },function(error){
           console.log(error);
     })
}


