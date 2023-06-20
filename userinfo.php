<?php
$conn= mysqli_connect('localhost', 'root');

if($conn){
	echo "Connection successful";
}
else{
	echo "No connection";
}
mysqli_select_db($conn, 'ocr2');
$user_name= $_POST['user_name'];
$user_email= $_POST['user_email'];
$user_password= $_POST['user_password'];
$user_phone= $_POST['user_phone'];
$user_address= $_POST['user_address'];

$query = " insert into userinfo (user_name, user_email, user_password, user_phone, user_address)
values('$user_name', '$user_email', '$user_password', '$user_phone', '$user_address')";

echo"$query";

mysqli_query($conn, $query);

header('location: login.php');
?>
