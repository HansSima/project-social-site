<?php
include("../../Config/config.php");
include("../classes/user.php");
include("../classes/Notification.php");

$limit = 7; //Number of messages to load

$Notification = new Notification($con, $_REQUEST['userLoggedIn']);
echo $Notification->getNotifications($_REQUEST, $limit);