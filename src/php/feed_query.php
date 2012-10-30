<?php
$mode=$_GET['mode']; 
$last_msg_id = $_GET['last_msg_id']; 

switch($mode) {
  case 'first':
    $str = "group by eventID ORDER BY max(feedID)  DESC LIMIT 5";
    break;
  case 'second':
	if($last_msg_id == "")
	  $last_msg_id = 9999;
    $str = "WHERE feedID < '$last_msg_id' group by eventID ORDER BY max(feedID)  DESC LIMIT 5";
    break;
  case 'new':
    $str = "WHERE feedID > '$last_msg_id' group by eventID ORDER BY max(feedID)  DESC";
    break;
}

$sql = mysql_query("SELECT  max(feedID), eventID, attendID FROM eventsfeed ".$str);
$_GET['sql'] = $sql;
?>