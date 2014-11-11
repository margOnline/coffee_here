function viewMap(){
  handler = Gmaps.build('Google');
  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function (){
    markers = handler.addMarkers();
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  });
}

$(document).ready(function(){
  $(document).on('click','#js-view-map', function(e){
    viewMap();
  });
});
