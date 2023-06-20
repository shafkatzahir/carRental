<?php
// first of all, we need to connect to the database
require_once('dbconnect.php');

// we need to check if the input in the form textfields are not empty
if(isset($_POST['user_name']) && isset($_POST['user_password'])){
	// write the query to check if this username and password exists in our database
	$u = $_POST['user_name'];
	$p = $_POST['user_password'];
	$sql = "SELECT * FROM userinfo WHERE user_name = '$u' AND user_password = '$p'";
	
	//Execute the query 
	$result = mysqli_query($conn, $sql);
	
	//check if it returns an empty set
	if(mysqli_num_rows($result) != 0){
		echo"Let him enter";
		header ("Location:welcome_page.php");
	}

	else{
		echo "Password or User Name is incorrect";
		//header("Location: index.php");
	}
	
}


?>