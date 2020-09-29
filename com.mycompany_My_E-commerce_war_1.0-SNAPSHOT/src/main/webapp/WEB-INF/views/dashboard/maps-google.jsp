<%-- 
    Document   : maps-google
    Created on : Aug 5, 2020, 9:05:49 AM
    Author     : Saiful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Web UI Kit &amp; Dashboard Template based on Bootstrap">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, web ui kit, dashboard template, admin template">

	<link rel="shortcut icon" href="dcss/img/icons/icon-48x48.png" />

	<title>Google Maps | AdminKit Demo</title>

	<link href="dcss/css/app.css" rel="stylesheet">
</head>

<body>
	 <div class="wrapper">
            
            
            <%@ include file='./sidebar/saidbar.jsp'%>
            
            
            
            
            <div class="main">
                
            <%@ include file='./sidebar/navbar.jsp'%>
                
                
                
                <main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3">Google Maps</h1>

					<div class="row">
						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Default Map</h5>
									<h6 class="card-subtitle text-muted">Displays the default road map view.</h6>
								</div>
								<div class="card-body">
									<div class="content" id="default_map" style="height: 300px;"></div>
								</div>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Hybrid Map</h5>
									<h6 class="card-subtitle text-muted">Displays a mixture of normal and satellite views.</h6>
								</div>
								<div class="card-body">
									<div class="content" id="hybrid_map" style="height: 300px;"></div>
								</div>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Light Style</h5>
									<h6 class="card-subtitle text-muted">Ligh color scheme.</h6>
								</div>
								<div class="card-body">
									<div class="content" id="light_map" style="height: 300px;"></div>
								</div>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Dark Style</h5>
									<h6 class="card-subtitle text-muted">Dark color scheme.</h6>
								</div>
								<div class="card-body">
									<div class="content" id="dark_map" style="height: 300px;"></div>
								</div>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Streetview</h5>
									<h6 class="card-subtitle text-muted">Panoramic 360 degree views from designated roads throughout its coverage area.</h6>
								</div>
								<div class="card-body">
									<div class="content" id="streetview_map" style="height: 300px;"></div>
								</div>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Markers</h5>
									<h6 class="card-subtitle text-muted">Identify a location on a map.</h6>
								</div>
								<div class="card-body">
									<div class="content" id="markers_map" style="height: 300px;"></div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</main>

			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-left">
							<p class="mb-0">
								<a href="index.html" class="text-muted"><strong>AdminKit Demo</strong></a> &copy;
							</p>
						</div>
						<div class="col-6 text-right">
							<ul class="list-inline">
								<li class="list-inline-item">
									<a class="text-muted" href="#">Support</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="#">Help Center</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="#">Privacy</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="#">Terms</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>

<!--	<script src="dcss/js/vendor.js"></script>-->
	<script src="dcss/js/app.js"></script>

	<script>
		function initMaps() {
			var defaultMap = {
				zoom: 14,
				center: {
					lat: 40.712784,
					lng: -74.005941
				},
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};
			new google.maps.Map(document.getElementById("default_map"), defaultMap);
			var hybridMap = {
				zoom: 14,
				center: {
					lat: 40.712784,
					lng: -74.005941
				},
				mapTypeId: google.maps.MapTypeId.HYBRID
			};
			new google.maps.Map(document.getElementById("hybrid_map"), hybridMap);
			var lightMap = {
				zoom: 14,
				center: {
					lat: 40.712784,
					lng: -74.005941
				},
				styles: [{
					"featureType": "water",
					"elementType": "geometry",
					"stylers": [{
						"color": "#e9e9e9"
					}, {
						"lightness": 17
					}]
				}, {
					"featureType": "landscape",
					"elementType": "geometry",
					"stylers": [{
						"color": "#f5f5f5"
					}, {
						"lightness": 20
					}]
				}, {
					"featureType": "road.highway",
					"elementType": "geometry.fill",
					"stylers": [{
						"color": "#ffffff"
					}, {
						"lightness": 17
					}]
				}, {
					"featureType": "road.highway",
					"elementType": "geometry.stroke",
					"stylers": [{
						"color": "#ffffff"
					}, {
						"lightness": 29
					}, {
						"weight": 0.2
					}]
				}, {
					"featureType": "road.arterial",
					"elementType": "geometry",
					"stylers": [{
						"color": "#ffffff"
					}, {
						"lightness": 18
					}]
				}, {
					"featureType": "road.local",
					"elementType": "geometry",
					"stylers": [{
						"color": "#ffffff"
					}, {
						"lightness": 16
					}]
				}, {
					"featureType": "poi",
					"elementType": "geometry",
					"stylers": [{
						"color": "#f5f5f5"
					}, {
						"lightness": 21
					}]
				}, {
					"featureType": "poi.park",
					"elementType": "geometry",
					"stylers": [{
						"color": "#dedede"
					}, {
						"lightness": 21
					}]
				}, {
					"elementType": "labels.text.stroke",
					"stylers": [{
						"visibility": "on"
					}, {
						"color": "#ffffff"
					}, {
						"lightness": 16
					}]
				}, {
					"elementType": "labels.text.fill",
					"stylers": [{
						"saturation": 36
					}, {
						"color": "#333333"
					}, {
						"lightness": 40
					}]
				}, {
					"elementType": "labels.icon",
					"stylers": [{
						"visibility": "off"
					}]
				}, {
					"featureType": "transit",
					"elementType": "geometry",
					"stylers": [{
						"color": "#f2f2f2"
					}, {
						"lightness": 19
					}]
				}, {
					"featureType": "administrative",
					"elementType": "geometry.fill",
					"stylers": [{
						"color": "#fefefe"
					}, {
						"lightness": 20
					}]
				}, {
					"featureType": "administrative",
					"elementType": "geometry.stroke",
					"stylers": [{
						"color": "#fefefe"
					}, {
						"lightness": 17
					}, {
						"weight": 1.2
					}]
				}]
			};
			new google.maps.Map(document.getElementById("light_map"), lightMap)
			var darkMap = {
				zoom: 14,
				center: {
					lat: 40.712784,
					lng: -74.005941
				},
				styles: [{
					"featureType": "all",
					"elementType": "labels.text.fill",
					"stylers": [{
						"saturation": 36
					}, {
						"color": "#000000"
					}, {
						"lightness": 40
					}]
				}, {
					"featureType": "all",
					"elementType": "labels.text.stroke",
					"stylers": [{
						"visibility": "on"
					}, {
						"color": "#000000"
					}, {
						"lightness": 16
					}]
				}, {
					"featureType": "all",
					"elementType": "labels.icon",
					"stylers": [{
						"visibility": "off"
					}]
				}, {
					"featureType": "administrative",
					"elementType": "geometry.fill",
					"stylers": [{
						"color": "#000000"
					}, {
						"lightness": 20
					}]
				}, {
					"featureType": "administrative",
					"elementType": "geometry.stroke",
					"stylers": [{
						"color": "#000000"
					}, {
						"lightness": 17
					}, {
						"weight": 1.2
					}]
				}, {
					"featureType": "landscape",
					"elementType": "geometry",
					"stylers": [{
						"color": "#000000"
					}, {
						"lightness": 20
					}]
				}, {
					"featureType": "poi",
					"elementType": "geometry",
					"stylers": [{
						"color": "#000000"
					}, {
						"lightness": 21
					}]
				}, {
					"featureType": "road.highway",
					"elementType": "geometry.fill",
					"stylers": [{
						"color": "#000000"
					}, {
						"lightness": 17
					}]
				}, {
					"featureType": "road.highway",
					"elementType": "geometry.stroke",
					"stylers": [{
						"color": "#000000"
					}, {
						"lightness": 29
					}, {
						"weight": 0.2
					}]
				}, {
					"featureType": "road.arterial",
					"elementType": "geometry",
					"stylers": [{
						"color": "#000000"
					}, {
						"lightness": 18
					}]
				}, {
					"featureType": "road.local",
					"elementType": "geometry",
					"stylers": [{
						"color": "#000000"
					}, {
						"lightness": 16
					}]
				}, {
					"featureType": "transit",
					"elementType": "geometry",
					"stylers": [{
						"color": "#000000"
					}, {
						"lightness": 19
					}]
				}, {
					"featureType": "water",
					"elementType": "geometry",
					"stylers": [{
						"color": "#000000"
					}, {
						"lightness": 17
					}]
				}]
			};
			new google.maps.Map(document.getElementById("dark_map"), darkMap)
			var streetviewMap = {
				position: {
					lat: 42.345573,
					lng: -71.098326
				},
				pov: {
					heading: 160,
					pitch: 0
				}
			};
			new google.maps.StreetViewPanorama(document.getElementById("streetview_map"), streetviewMap);
			var markersMap = {
				zoom: 14,
				center: {
					lat: 40.712784,
					lng: -74.005941
				},
				mapTypeId: google.maps.MapTypeId.TERRAIN
			};
			var markersMap = new google.maps.Map(document.getElementById("markers_map"), markersMap)
			var marker = new google.maps.Marker({
				position: {
					lat: 40.712784,
					lng: -74.005941
				},
				map: markersMap,
				title: "Hello World!"
			});
		}
	</script>

	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDTU0Z-xRPDiH08db7P7QASdJ5pASq2CH4&callback=initMaps" async defer></script>

</body>

</html>