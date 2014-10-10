handler = Gmap.build('Google');
handler.buildMap({ provider: {}, internal: {id: 'map'}}, function (){
  markers = handler.addMarkers([
  {
    "lat": 0,
    "long": 0,
    "picture": {
      "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
      "width": 36,
      "height": 36
     },
    "infowindow": ''
    }
  ]);
  handler.bounds.extendsWith(markers);
  handler.fitMapToBounds();
})
