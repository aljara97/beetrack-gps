function initMap(ltd, lng) {
  console.log(points)
  /*    
  var myCoords = new google.maps.LatLng(points[0].latitude, points[0].longitude);
  */
  var myCoords = new google.maps.LatLng(ltd, lng)    
  var mapOptions = {
    center: myCoords,
    zoom: 14
  };    
  var map = new google.maps.Map(document.getElementById('map'), mapOptions);
  var marker = new google.maps.Marker({
    position: myCoords,
    map: map
  })
  /*
  points.forEach(point => {
    var currentCoords = new google.maps.LatLng(point.latitude, point.longitude);
    var currentMarker = new google.maps.Marker({
      position: currentCoords,
      map: map
    }); 
  });
  */   
}