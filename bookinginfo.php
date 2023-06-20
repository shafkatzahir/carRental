<?php
$conn= mysqli_connect('localhost', 'root');

if($conn){
	echo "Connection successful";
}
else{
	echo "No connection";
}
mysqli_select_db($conn, 'ocr2');
$booked_car= $_POST['booked_car'];
$user_name= $_POST['user_name'];
$booking_date= $_POST['booking_date'];
$car_pickup_branch= $_POST['car_pickup_branch'];
$car_dropoff_branch= $_POST['car_dropoff_branch'];

$query = " insert into bookinginfo (booked_car, user_name, booking_date, car_pickup_branch, car_dropoff_branch)
values('$booked_car','$user_name', '$booking_date', '$car_pickup_branch', '$car_dropoff_branch')";

$query_run = mysqli_query($conn, $query);

if($query_run)
    {
        mysqli_query($conn, "DELETE FROM carlist WHERE car_model='$booked_car'");
        header('location: booking_successful.php');
    }
    else
    {
        echo "Incorrect Car Information";
		 
    }    


?>
