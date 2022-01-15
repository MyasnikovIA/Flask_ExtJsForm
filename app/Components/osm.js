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
                     var map = L.map(localElement['dom']['id']);
                     //  var osmUrl = 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png';
                     var osmUrl = '/openstreetmap/{s}/{z}/{x}/{y}.png'; // адрес кэширования загруженой карты
                     var osmAttrib = '';
                     var osm = new L.TileLayer(osmUrl, {
                         minZoom: 0,
                         maxZoom: 18,
                         attribution: osmAttrib
                     });
                     map.setView(new L.LatLng(53.3594112 , 83.6796416), 12, { reset: true });
                     map.addLayer(osm);
                     var marker = L.marker([53.3594112, 83.6796416], {
                         icon: L.icon({
                             iconUrl: '/images/geo_point.png',
                             iconSize: [41, 41],
                             iconAnchor: [12, 40],
                             popupAnchor: [0, -35]
                         })
                     }).addTo(map);
                     marker.bindPopup('<b>Baldwin City, KS</b><br>').openPopup();
                     let controls = document.querySelectorAll(".leaflet-control-attribution");
                     for (let ind = 0; ind < controls.length; ++ind) {
                        controls[ind].style['display'] = 'none';
                     }
                     function onMapClick(e) {
                        alert("You clicked the map at " + e.latlng);
                     }
                     map.on('click', onMapClick);
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