<?php
require '../../Config/config.php';
include("../classes/user.php");
include("../classes/post.php");
include("includes/classes/Notification.php");

if (isset($_POST['post_body'])) {
	
	$post = new Post($con, $_POST['user_from']); 
	$post->submitPost($_POST['post_body'], $_POST['user_to']);
}
?>