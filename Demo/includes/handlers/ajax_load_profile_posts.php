<?php
	include("../../Config/config.php");
	include("../classes/user.php");
	include("../classes/post.php");

	$limit = 10; //Number of posts to be loaded per call

	$posts = new Post($con, $_REQUEST['userLoggedIn']);
	$posts->loadProfilePosts($_REQUEST, $limit);
?>