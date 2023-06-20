<?php
$conn= mysqli_connect('localhost', 'root');

if($conn){
	echo "Connection successful";
}
else{
	echo "No connection";
}
mysqli_select_db($conn, 'ocr2');
$car_type= $_POST['car_type'];
$car_model= $_POST['car_model'];
$car_numberplate= $_POST['car_numberplate'];
$car_insurance_details= $_POST['car_insurance_details'];

$query = " insert into carlist (car_type, car_model, car_numberplate, car_insurance_details)
values('$car_type', '$car_model', '$car_numberplate', '$car_insurance_details')";

echo"$query";

mysqli_query($conn, $query);

header('location: show_carlist.php');
?>
