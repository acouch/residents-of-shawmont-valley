---
title: About the RSVA
layout: single
permalink: /about/
---

{% include img image_path="assets/imgs/rsva-logo-300w.png" style="float:right;max-width:300px; padding: 0 0 40px 40px"%}

Residents of Shawmont Valley is neighborhood association established by concerned neighbors in 1980 located in the upper Roxborough neighborhood of Philadelphia. RSVA is a Registered Community Organization (RCO).

With a focus on the preservation of greenways, waterways, and the overall watershed area, and of course, issues that impact our lives and footprint of our neighborhood. We are committed to maintain and improve the quality of life in our community.

<link href="https://api.mapbox.com/mapbox-gl-js/v2.15.0/mapbox-gl.css" rel="stylesheet">
<script src="https://api.mapbox.com/mapbox-gl-js/v2.15.0/mapbox-gl.js"></script>
<style>
  #map { min-width: 400px;
height: 600px;
}
#map-outer {
margin-top: 80px;
font-size: .8em; 
}
</style>
<body>
<div id="map-outer">A map of the RSVA catchment area:
<div id="map"></div>
</div>
<script>
  const lat = '40.05188815728933';
  const lon = '-75.25381861658613';
  const geo_file = '/assets/maps/shawmontvalley.geojson';

  mapboxgl.accessToken = 'pk.eyJ1IjoiYWNvdWNoMSIsImEiOiJDTy0zMFJrIn0.hewU0mOW08Wm5-0-Qr8TpQ';
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/light-v11',
    center: [lon, lat],
    zoom: 13
  });
 
  map.on('load', () => {
    map.addSource('rco', {
    'type': 'geojson',
    'data': geo_file
  });
  map.addLayer({
    'id': 'rco',
    'type': 'line',
    'source': 'rco',
    'layout': {
      'line-join': 'round',
      'line-cap': 'round'
    },
    'paint': {
      'line-color': '#888',
      'line-width': 6
      }
    });
  });
</script>

