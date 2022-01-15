// https://fiddle.sencha.com/#fiddle/bd1&view/editor
Ext.define('widget.osm', {
     extend: 'Ext.Widget',
     constructor: function(config) {
         this.callParent([config]);
         Ext.getBody().appendChild(this.element);
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
                     let osm = new L.TileLayer(osmUrl, {
                         minZoom: 0,
                         maxZoom: 18,
                         attribution: osmAttrib
                     });
                     map.setView(new L.LatLng(53.3594112 , 83.6796416), 12, { reset: true });
                     map.addLayer(osm);
                     let marker = L.marker([53.3594112, 83.6796416], {
                         icon: L.icon({
                             iconUrl: '/images/geo_point.png',
                             iconSize: [41, 41],
                             iconAnchor: [12, 40],
                             popupAnchor: [0, -35]
                         })
                     }).addTo(map);
                     marker.bindPopup('<b>Baldwin City, KS</b><br>').openPopup();
                     let panelOSM = document.querySelectorAll(".leaflet-tile-container");
                     for (let ind = 0; ind < panelOSM.length; ++ind) {
                        panelOSM[ind].style['cursor'] = 'default';
                     }
                     let controls = document.querySelectorAll(".leaflet-control-attribution");
                     for (let ind = 0; ind < controls.length; ++ind) {
                        controls[ind].style['display'] = 'none';
                     }
                     localElement.clickPoint ={};
                     localElement.setPoint=function(){}
                     function onMapClick(e) {
                        alert("You clicked the map at " + e.latlng);
                     }
                     if (typeof(localConfig['listeners']) !== 'undefined'){
                         for (let key in localConfig['listeners']) {
                            if (['click','dblclick'].includes(key)) {
                              map.on(key, function(pointClick) {
                                  localElement.clickPoint = pointClick;
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
                     localElement['map'] = map
                     // Установить новую точку на карте
                     localElement['appLabel'] = function() {

                     }
                     // Получить список точек на карте
                     localElement['getLabels'] = function() {

                     }

                     //map.on('click', onMapClick);
                     console.log("localConfig",localConfig)
                     console.log("localElement",localElement)
                     // дописать инициализацию компонента
                 }
             },function(error){
                 console.log(error);
             })
         },function(error){
             console.log(error);
         })
     }
 }, function() {  });