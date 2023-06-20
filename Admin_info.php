<?php
// first of all, we need to connect to the database
require_once('dbconnect.php');

// we need to check if the input in the form textfields are not empty
if(isset($_POST['admin_name']) && isset($_POST['admin_password'])){
	// write the query to check if this username and password exists in our database
	$u = $_POST['admin_name'];
	$p = $_POST['admin_password'];
	$sql = "SELECT * FROM admininfo WHERE admin_name = '$u' AND admin_password = '$p'";
	
	//Execute the query 
	$result = mysqli_query($conn, $sql);
	
	//check if it returns an empty set
	if(mysqli_num_rows($result)!=0 ){
	
		//echo "ADMIN Login Successful ";
		header('Location: Admin_portal.php');
	}
	else{
		echo "You are not registered as an admin";
		//header("Location: index.php");
	}
	
}


?>
