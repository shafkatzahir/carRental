<?php
require_once('dbconnect.php');

if(isset($_POST['select_btn']))
{
    $car_model = $_POST['select_car_model'];

    $query = "DELETE FROM carlist WHERE car_model='$car_model' ";
    $query_run = mysqli_query($conn, $query);

    if($query_run)
    {
        $_SESSION['status'] = "Your Data is Selected";
        $_SESSION['status_code'] = "success";
        header('Location: select_car.php'); 
    }
    else
    {
        $_SESSION['status'] = "Your Data is NOT Selected";       
        $_SESSION['status_code'] = "error";
        header('Location: select_car.php'); 
    }    
}
?>