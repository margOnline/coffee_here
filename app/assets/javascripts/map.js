function viewMap(){
  handler = Gmaps.build('Google');
  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function (){
    markers = handler.addMarkers(@map_markers.to_json);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  });
}

$(document).ready(function(){
  $(document).on('click','#js-view-map', function(e){
    viewMap();
  });
});
