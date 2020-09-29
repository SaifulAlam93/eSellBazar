<%-- 
    Document   : ui-alerts
    Created on : Aug 5, 2020, 9:07:28 AM
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

	<title>Alerts | AdminKit Demo</title>

	<link href="dcss/css/app.css" rel="stylesheet">
</head>

<body>
	 <div class="wrapper">
            
            
            <%@ include file='./sidebar/saidbar.jsp'%>
            
            
            
            
            <div class="main">
                
            <%@ include file='./sidebar/navbar.jsp'%>
                
                
                
                <main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3">Alerts</h1>

					<div class="row">
						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Default alerts</h5>
									<h6 class="card-subtitle text-muted">Alerts with contextual background color.</h6>
								</div>
								<div class="card-body">
									<div class="mb-3">
										<div class="alert alert-primary alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple primary alert—check it out!
											</div>
										</div>
										<div class="alert alert-secondary alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple secondary alert—check it out!
											</div>
										</div>
										<div class="alert alert-success alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple success alert—check it out!
											</div>
										</div>
										<div class="alert alert-danger alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple danger alert—check it out!
											</div>
										</div>
										<div class="alert alert-warning alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple warning alert—check it out!
											</div>
										</div>
										<div class="alert alert-info alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple info alert—check it out!
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Icon alerts</h5>
									<h6 class="card-subtitle text-muted">Alerts with icon and background color.</h6>
								</div>
								<div class="card-body">
									<div class="mb-3">
										<div class="alert alert-primary alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple primary alert—check it out!
											</div>
										</div>
										<div class="alert alert-secondary alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple secondary alert—check it out!
											</div>
										</div>
										<div class="alert alert-success alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple success alert—check it out!
											</div>
										</div>
										<div class="alert alert-danger alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple danger alert—check it out!
											</div>
										</div>
										<div class="alert alert-warning alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple warning alert—check it out!
											</div>
										</div>
										<div class="alert alert-info alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple info alert—check it out!
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Outline alerts</h5>
									<h6 class="card-subtitle text-muted">Alerts with contextual icon background.</h6>
								</div>
								<div class="card-body">
									<div class="mb-3">
										<div class="alert alert-primary alert-outline alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple primary alert—check it out!
											</div>
										</div>
										<div class="alert alert-secondary alert-outline alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple secondary alert—check it out!
											</div>
										</div>
										<div class="alert alert-success alert-outline alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple success alert—check it out!
											</div>
										</div>
										<div class="alert alert-danger alert-outline alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple danger alert—check it out!
											</div>
										</div>
										<div class="alert alert-warning alert-outline alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple warning alert—check it out!
											</div>
										</div>
										<div class="alert alert-info alert-outline alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple info alert—check it out!
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Colored outline alerts</h5>
									<h6 class="card-subtitle text-muted">Alerts with contextual outline color.</h6>
								</div>
								<div class="card-body">
									<div class="mb-3">
										<div class="alert alert-primary alert-outline-coloured alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple primary alert—check it out!
											</div>
										</div>
										<div class="alert alert-secondary alert-outline-coloured alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple secondary alert—check it out!
											</div>
										</div>
										<div class="alert alert-success alert-outline-coloured alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple success alert—check it out!
											</div>
										</div>
										<div class="alert alert-danger alert-outline-coloured alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple danger alert—check it out!
											</div>
										</div>
										<div class="alert alert-warning alert-outline-coloured alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple warning alert—check it out!
											</div>
										</div>
										<div class="alert alert-info alert-outline-coloured alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
											<div class="alert-icon">
												<i class="far fa-fw fa-bell"></i>
											</div>
											<div class="alert-message">
												<strong>Hello there!</strong> A simple info alert—check it out!
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Alerts with additonal content</h5>
									<h6 class="card-subtitle text-muted">Alerts with large contents.</h6>
								</div>
								<div class="card-body">
									<div class="mb-3">
										<div class="alert alert-success alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
											<div class="alert-message">
												<h4 class="alert-heading">Well done!</h4>
												<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an
													alert works with this kind of content.</p>
												<hr>
												<p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
											</div>
										</div>
									</div>

									<div class="mb-3">
										<div class="alert alert-primary alert-outline alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
											<div class="alert-message">
												<h4 class="alert-heading">Well done!</h4>
												<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an
													alert works with this kind of content.</p>
												<hr>
												<p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Alerts with buttons</h5>
									<h6 class="card-subtitle text-muted">Alerts with actions.</h6>
								</div>
								<div class="card-body">
									<div class="mb-3">
										<div class="alert alert-success alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
											<div class="alert-message">
												<h4 class="alert-heading">Well done!</h4>
												<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an
													alert works with this kind of content.</p>
												<hr>
												<div class="btn-list">
													<button class="btn btn-light" type="button">Okay</button>
													<button class="btn btn-secondary" type="button">No, thanks</button>
												</div>
											</div>
										</div>
									</div>

									<div class="mb-3">
										<div class="alert alert-primary alert-outline alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
											<div class="alert-message">
												<h4 class="alert-heading">Well done!</h4>
												<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an
													alert works with this kind of content.</p>
												<hr>
												<div class="btn-list">
													<button class="btn btn-success" type="button">Okay</button>
													<button class="btn btn-danger" type="button">No, thanks</button>
												</div>
											</div>
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

	<!--<script src="dcss/js/vendor.js"></script>-->
	<script src="dcss/js/app.js"></script>

</body>

</html>