<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link href="css/style.css" rel="stylesheet"/> 

  
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">370 Car Rental</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php">Home</a>
        </li>
       
        </li>
        <li class="nav-item">
          <a class="nav-link" href="booking.php">Booking</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="show_car.php">Cars</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="show_driver.php">Driver</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="show_branches.php">Branches</a>
        </li>
        
         
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<div class="py-5">
    <h2 class="text-center"> Booking List</h2>
  </div>
  <div style="margin-left:10%; margin-right:10%; margin-top:50px; margin-bottom:50px;text-align:center;background:#82E0AA;">
      <div class="row" style="padding:5px;"> 
        <div class="col-md-2">  Booking ID </div>
        <div class="col-md-2">  Booking Date</div>
        <div class="col-md-2">  Car PickUp Location </div>
        <div class="col-md-2">  Car DropOff Location </div>
        <div class="col-md-2">  Booking Type </div>
        <div class="col-md-2">  Operation </div>
      </div>

<?php 
      require_once("DBconnect.php");
      $sql = "SELECT * FROM bookinginfo";
      $result = mysqli_query($conn, $sql);
      if(mysqli_num_rows($result) > 0){
        
        while($row = mysqli_fetch_array($result)){
        
      ?>
      <div class="row" style="padding:5px;"> 
        <div class="col-md-2">  <?php echo $row[0]; ?> </div>
        <div class="col-md-2">  <?php echo $row[1]; ?> </div>
        <div class="col-md-2">  <?php echo $row[2] ?> </div>
        <div class="col-md-2">  <?php echo $row[3] ?> </div>
        <div class="col-md-2">  <?php echo $row[4] ?> </div>
        <div class="col-md-2">  <?php<td>
       <td>
                <form action="delete_booking.php" method="post">
                  <input type="hidden" name="delete_booking_id" value="<?php echo $row['booking_id']; ?>">
                  <button type="submit" name="delete_btn" class="btn btn-danger">Delete</button>
                </form>
                <td>

      </div>
      </div>
      
      <?php 
        }         
      }
      ?>
      <div>
      <p></p>
    </div>

      
    </div>
       <div class= "text-center">
   <a href="Admin_portal.php" class="btn btn-success"> Back To Admin Page </a>
 </div>
    
</section>





<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<head>
</body>
</html>

