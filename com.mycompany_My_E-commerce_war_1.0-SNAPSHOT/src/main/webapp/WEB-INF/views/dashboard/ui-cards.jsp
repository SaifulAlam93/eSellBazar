<%-- 
    Document   : ui-cards
    Created on : Aug 5, 2020, 9:08:00 AM
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

	<title>Cards | AdminKit Demo</title>

	<link href="dcss/css/app.css" rel="stylesheet">
</head>

<body>
	 <div class="wrapper">
            
            
            <%@ include file='./sidebar/saidbar.jsp'%>
            
            
            
            
            <div class="main">
                
            <%@ include file='./sidebar/navbar.jsp'%>
                
                
                
                <main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3">Cards</h1>

					<div class="row">
						<div class="col-12 col-md-6 col-lg-4">
							<div class="card">
								<img class="card-img-top" src="dcss/img/photos/unsplash-1.jpg" alt="Unsplash">
								<div class="card-header">
									<h5 class="card-title mb-0">Card with image and links</h5>
								</div>
								<div class="card-body">
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									<a href="#" class="card-link">Card link</a>
									<a href="#" class="card-link">Another link</a>
								</div>
							</div>
						</div>

						<div class="col-12 col-md-6 col-lg-4">
							<div class="card">
								<img class="card-img-top" src="dcss/img/photos/unsplash-2.jpg" alt="Unsplash">
								<div class="card-header">
									<h5 class="card-title mb-0">Card with image and button</h5>
								</div>
								<div class="card-body">
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									<a href="#" class="btn btn-primary">Go somewhere</a>
								</div>
							</div>
						</div>

						<div class="col-12 col-md-6 col-lg-4">
							<div class="card">
								<img class="card-img-top" src="dcss/img/photos/unsplash-3.jpg" alt="Unsplash">
								<div class="card-header">
									<h5 class="card-title mb-0">Card with image and list</h5>
								</div>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">Cras justo odio</li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Vestibulum at eros</li>
								</ul>
							</div>
						</div>

						<div class="col-12 col-md-6 col-lg-4">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">Card with links</h5>
								</div>
								<div class="card-body">
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									<a href="#" class="card-link">Card link</a>
									<a href="#" class="card-link">Another link</a>
								</div>
							</div>
						</div>

						<div class="col-12 col-md-6 col-lg-4">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">Card with button</h5>
								</div>
								<div class="card-body">
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									<a href="#" class="btn btn-primary">Go somewhere</a>
								</div>
							</div>
						</div>

						<div class="col-12 col-md-6 col-lg-4">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">Card with list</h5>
								</div>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">Cras justo odio</li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Vestibulum at eros</li>
								</ul>
							</div>
						</div>

						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<ul class="nav nav-tabs card-header-tabs pull-right" role="tablist">
										<li class="nav-item">
											<a class="nav-link active" data-toggle="tab" href="#tab-1">Active</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" data-toggle="tab" href="#tab-2">Link</a>
										</li>
										<li class="nav-item">
											<a class="nav-link disabled" data-toggle="tab" href="#tab-3">Disabled</a>
										</li>
									</ul>
								</div>
								<div class="card-body">
									<div class="tab-content">
										<div class="tab-pane fade show active" id="tab-1" role="tabpanel">
											<h5 class="card-title">Card with tabs</h5>
											<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
											<a href="#" class="btn btn-primary">Go somewhere</a>
										</div>
										<div class="tab-pane fade text-center" id="tab-2" role="tabpanel">
											<h5 class="card-title">Card with tabs</h5>
											<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
											<a href="#" class="btn btn-primary">Go somewhere</a>
										</div>
										<div class="tab-pane fade" id="tab-3" role="tabpanel">
											<h5 class="card-title">Card with tabs</h5>
											<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
											<a href="#" class="btn btn-primary">Go somewhere</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<ul class="nav nav-pills card-header-pills pull-right" role="tablist">
										<li class="nav-item">
											<a class="nav-link active" data-toggle="tab" href="#tab-4">Active</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" data-toggle="tab" href="#tab-5">Link</a>
										</li>
										<li class="nav-item">
											<a class="nav-link disabled" data-toggle="tab" href="#tab-6">Disabled</a>
										</li>
									</ul>
								</div>
								<div class="card-body">
									<div class="tab-content">
										<div class="tab-pane fade show active" id="tab-4" role="tabpanel">
											<h5 class="card-title">Card with pills</h5>
											<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
											<a href="#" class="btn btn-primary">Go somewhere</a>
										</div>
										<div class="tab-pane fade text-center" id="tab-5" role="tabpanel">
											<h5 class="card-title">Card with pills</h5>
											<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
											<a href="#" class="btn btn-primary">Go somewhere</a>
										</div>
										<div class="tab-pane fade" id="tab-6" role="tabpanel">
											<h5 class="card-title">Card with pills</h5>
											<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
											<a href="#" class="btn btn-primary">Go somewhere</a>
										</div>
									</div>
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

<!--	<script src="dcss/js /vendor.js"></script>-->
	<script src="dcss/js/app.js"></script>

</body>

</html>