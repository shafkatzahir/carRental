<?php
require_once('dbconnect.php');

if(isset($_POST['delete_btn']))
{
    $car_model = $_POST['delete_car_model'];

    $query = "DELETE FROM carlist WHERE car_model='$car_model' ";
    $query_run = mysqli_query($conn, $query);

    if($query_run)
    {
        $_SESSION['status'] = "Your Data is Deleted";
        $_SESSION['status_code'] = "success";
        header('Location: show_carlist.php'); 
    }
    else
    {
        $_SESSION['status'] = "Your Data is NOT DELETED";       
        $_SESSION['status_code'] = "error";
        header('Location: show_carlist.php'); 
    }    
}
?>