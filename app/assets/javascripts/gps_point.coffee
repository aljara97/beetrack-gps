@initMap = ->
  center =
    lat: 0
    lng: 0
  
  map = new (google.maps.Map) $('#map')['0'],
    zoom: 2
    center: center
