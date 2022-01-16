// https://fiddle.sencha.com/#fiddle/bd1&view/editor
// http://leaflet.github.io/Leaflet.label/
Ext.define('widget.osm', {
     extend: 'Ext.Widget',
     constructor: function(config) {
        this.callParent([config]);
         // console.log("this.element",this.element)
         // console.log("Ext.getBody()",Ext.getBody())
         //Ext.getBody().appendChild(this.element);
         let localConfig = config;
         let localElement = this.element;
         loadCSS("/lib/OpenStreetMap/Leaflet.css").then(function(){
             loadScript("/lib/OpenStreetMap/Leaflet.js").then(function(){
                 if (!window.L) {
                     alert('No Leaflet library');
                 } else {
                     let map = L.map(localElement['dom']['id']);
                     //  var osmUrl = 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png';
                     let osmUrl = '/openstreetmap/{s}/{z}/{x}/{y}.png'; // адрес кэширования загруженой карты
                     let osmAttrib = '';
                     let popup = L.popup();
                     let mapclick = function(e){}
                     let osm = new L.TileLayer(osmUrl, {
                         minZoom: 0,
                         maxZoom: 18,
                         attribution: osmAttrib
                     });
                     map.setView(new L.LatLng(53.3594112 , 83.6796416), 12, { reset: true });
                     map.addLayer(osm);

                     //let marker = L.marker([53.3594112, 83.6796416], {
                     //    icon: L.icon({
                     //        iconUrl: '/images/geo_point.png',
                     //        iconSize: [41, 41],
                     //        iconAnchor: [12, 40],
                     //        popupAnchor: [0, -35]
                     //    })
                     //}).addTo(map);
                     //marker.bindPopup('<b>Baldwin City, KS</b><br>').openPopup();

                     // http://leaflet.github.io/Leaflet.label/
                     //  var p = L.polyline([
                     //      [-37.7612, 175.2756],
                     //      [-37.7702, 175.2796],
                     //      [-37.7802, 175.2750]
                     //  ],{ weight: 12, color: '#fe57a1' }).bindLabel('Even polylines can have labels.', { direction: 'auto' }).addTo(map);


                     let panelOSM = document.querySelectorAll(".leaflet-tile-container");
                     for (let ind = 0; ind < panelOSM.length; ++ind) {
                        panelOSM[ind].style['cursor'] = 'default';
                     }
                     let controls = document.querySelectorAll(".leaflet-control-attribution");
                     for (let ind = 0; ind < controls.length; ++ind) {
                        controls[ind].style['display'] = 'none';
                     }
                     localElement.clickPoint ={};
                     localElement.selectMarker = null;
                     localElement.setPoint=function(){}
                     function onMapClick(e) {
                        alert("You clicked the map at " + e.latlng);
                     }
                     if (typeof(localConfig['listeners']) !== 'undefined'){
                         for (let key in localConfig['listeners']) {
                            if (['mapclick'].includes(key)) {
                              mapclick = localConfig['mapclick'][key]
                            }
                            if (['click','dblclick'].includes(key)) {
                              map.on(key, function(pointClick) {
                                  localElement.clickPoint = pointClick;
                                  mapclick(pointClick)
                                  localConfig['listeners'][key](pointClick);
                              });
                              continue;
                            }
                            if (['itemcontextmenu','contextmenu'].includes(key)) {
                              map.on('contextmenu', function(pointClick) {
                                  localElement.clickPoint = pointClick;
                                  localConfig['listeners'][key](pointClick);
                              });
                              continue;
                            }
                            map.on(key, localConfig['listeners'][key]);
                         }
                     }
                     localElement['map'] = map;
                     localElement['labelList'] = [];
                     // Установить новую точку на карте
                     localElement['appLabel'] = function() {
                           let html="";
                           let title = "";
                           let icon = "";
                           let lat = 0;
                           let lng = 0;
                           if ((typeof(localElement.clickPoint) !== 'undefined') && (typeof(localElement.clickPoint['latlng']) !== 'undefined')) {
                               lat = localElement.clickPoint['latlng']['lat'];
                               lng = localElement.clickPoint['latlng']['lng'];
                           }
                           let arr = [].slice.call(arguments); // Перегружаем все аргументы в массив
                           if (typeof(arr[0]) === 'object'){
                                objLocation= arr.splice(0, 1)[0];
                                if (typeof(objLocation['lat']) !== 'undefined') {
                                    lat = objLocation['lat'];
                                }
                                if (typeof(objLocation['lng']) !== 'undefined') {
                                    lng = objLocation['lng'];
                                }
                                if (typeof(objLocation['lon']) !== 'undefined') {
                                    lng = objLocation['lon'];
                                }
                           }
                           if (typeof(arr[0]) === 'string')  html = arr.splice(0, 1)[0];
                           if (typeof(arr[0]) === 'string')  title = arr.splice(0, 1)[0];
                           if (typeof(arr[0]) === 'string')  icon = arr.splice(0, 1)[0];

                           if (typeof(icon) === 'undefined') {
                              icon = '/images/geo_point.png';
                           }
                          // let marker = L.marker([lat,lng],{
                          //     icon: L.icon({
                          //         iconUrl: icon,
                          //         iconSize: [41, 41],
                          //         iconAnchor: [12, 40],
                          //         popupAnchor: [0, -35]
                          //     })
                          // }).addTo(map).on('click', function () {
                          //      console.log(arguments)
                          // });
                          // marker.bindPopup(html).openPopup();
                           //    var deathIcon = L.icon({
                           //         iconUrl: icon,
                           //         iconSize: [36, 36],
                           //         iconAnchor: [18, 18],
                           //         popupAnchor: [0, -18],
                           //         labelAnchor: [14, 0] // as I want the label to appear 2px past the icon (18 + 2 - 6)
                           //     });
                           //     var noHide = false;
                           //     L.marker([latlng.latlng['lat'],latlng.latlng['lng']], {
                           //         icon: deathIcon
                           //     })
                           //     .bindLabel(title)
                           //     .bindPopup(html)
                           //     .addTo(map)
                           //     .on('click', function () {
                           //
                           //     });

                            let marker = new L.Marker([lat,lng], {
                               icon: new L.DivIcon({
                                   //iconUrl: icon,
                                   iconSize: [62, 62],
                                   iconAnchor: [12, 40],
                                   //popupAnchor: [0, -35],
                                   // className: 'my-div-icon',
                                   html: html
                               })
                           }).addTo(map)
                           .on('click', function(){
                               localElement.clickPoint = arguments[0]
                               localElement.selectMarker = marker;
                           });
                           // marker.bindPopup(title).openPopup();
                           localElement['labelList'].push(marker);
                     }

                     // Удалить выбранную метку
                     localElement['delLabel'] = function() {
                        if (localElement.selectMarker !== null) {
                            map.removeLayer(localElement.selectMarker)
                            const index = localElement['labelList'].indexOf(localElement.selectMarker);
                            if (index > -1) {
                              localElement['labelList'].splice(index, 1);
                            }
                            localElement.selectMarker = null;
                        }
                     }

                     // Удалить все метки
                     localElement['delLabels'] = function() {
                         for (let ind = 0; ind < localElement['labelList'].length; ++ind) {
                            map.removeLayer(localElement['labelList'][ind]);
                            const index = localElement['labelList'].indexOf(localElement['labelList'][ind]);
                            if (index > -1) {
                              localElement['labelList'].splice(index, 1);
                            }
                         }
                         localElement.selectMarker = null;
                     }

                     // Получить список точек на карте
                     localElement['getLabels'] = function() {
                         return localElement['labelList'];
                     }

                     // получить путь между  геоточками (Дописать)
                     localElement['getRoutePoint'] = function() {

                     }

                     localElement['drawLine'] = function(arr) {
                          var p = L.polyline([[-37.7612, 175.2756], [-37.7702, 175.2796],[-37.7802, 175.2750]],{ weight: 12, color: '#fe57a1' }).bindLabel('Even polylines can have labels.', { direction: 'auto' }).addTo(map);
                     }

                     // Поиск геообъекта по  слову
                     localElement['foundObject'] = function (FoundObjectText) {
                        var urlLoad = 'http://nominatim.openstreetmap.org/?format=json&addressdetails=1&q=' + encodeURIComponent(FoundObjectText);
                        return getJsonUrl(urlLoad);
                    }


                     // Показать текстовую информацию на карте
                     localElement['setInfo'] = function(e,txt) {
                        popup.setLatLng(e.latlng)
                        .setContent(txt)
                        .openOn(map);
                     }

                     // Показать текстовую информацию на карте
                     localElement['setInfo'] = function(e,txt) {
                        popup.setLatLng(e.latlng)
                        .setContent(txt)
                        .openOn(map);
                     }

                     localElement['getInfo'] = function (latlng) {
                        if (typeof(latlng) === 'undefined') {
                            latlng = localElement.clickPoint;
                        }
                        var locatObjUrl = "http://nominatim.openstreetmap.org/reverse?format=json&lat=" + latlng.latlng['lat'] + "&lon=" + latlng.latlng['lng'] + "&zoom=18&addressdetails=1";
                        return getJsonUrl(locatObjUrl);
                     }
                     // Получение позиции устройства
                     let markerPosition, circlePosition;
                     localElement['getPosition'] = function (position) {
                        if (typeof(Android) === 'undefined') {
                            if (!navigator.geolocation) {
                                console.log("Your browser doesn't support geolocation feature!")
                            } else {
                                navigator.geolocation.getCurrentPosition(getPosition)
                            };
                            function getPosition(position) {
                                // console.log(position)
                                lat = position.coords.latitude
                                long = position.coords.longitude
                                accuracy = position.coords.accuracy
                                if (markerPosition) {
                                    map.removeLayer(markerPosition)
                                }
                                if (circlePosition) {
                                    map.removeLayer(circlePosition)
                                }
                                markerPosition = L.marker([lat, long])
                                circlePosition = L.circle([lat, long], { radius: accuracy })
                                var featureGroup = L.featureGroup([markerPosition, circlePosition]).addTo(map)
                                map.fitBounds(featureGroup.getBounds())
                                // console.log("Your coordinate is: Lat: " + lat + " Long: " + long + " Accuracy: " + accuracy)
                            }
                        } else {
                           // Получит координаты из датчиков Андроид устройства
                        }
                    }


                     //map.on('click', onMapClick);
                     console.log("localConfig",localConfig)
                     console.log("localElement",localElement)
                     // дописать инициализацию компонента
                 }
             },function(error){ console.log(error);})
         },function(error){console.log(error);})
     }
 }, function() {  });