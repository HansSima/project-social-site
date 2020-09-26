<?php
require 'Config/config.php';
if(isset($_SESSION['username'])){
	$userLoggedIn = $_SESSION['username'];
	$user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$userLoggedIn'");
	$user = mysqli_fetch_array($user_details_query);
}
else{
	header("Location: register.php");
}
?>

<html>
<head>
	<title>Hlavní stránka</title>
	
	<!-- Javascript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/65b7148df1.js" crossorigin="anonymous"></script>

	<!-- CSS -->
	<!--<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">-->
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>

<body>

<div class="top_bar">
	<div class="logo">
		<a href="index.php">WhoCares!</a>
	</div>
	<nav>
		<a href="<?php echo $userLoggedIn; ?>">
		<?php echo $user['first_name']; ?>
		</a>
		<a href="#">
			<i class="fa fa-home fa-lg"></i>
		</a>
		<a href="#">
			<i class="fa fa-envelope fa-lg"></i>
		</a>
		<a href="#">
			<i class="fa fa-bell fa-lg"></i>
		</a>
		<a href="#">
			<i class="fa fa-users fa-lg"></i>
		</a>
		<a href="#">
			<i class="fa fa-cog fa-lg"></i>
		</a>
		<a href="includes/handlers/logout.php">
			<i class="fa fa-sign-out fa-lg"></i>
		</a>
	</nav>
</div>

<div class="wrapper">