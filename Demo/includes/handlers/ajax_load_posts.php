<?php
	include("../../config/config.php");
	include("../classes/user.php");
	include("../classes/post.php");

	$limit = 10; //Number of posts to be loaded per call

	$posts = new Post($con, $_REQUEST['userLoggedIn']);
	$posts->loadPostFriends($_REQUEST, $limit);
?>