<?php
define("DBASE","fitnessandnutrition1");

$con = mysqli_connect("localhost","root","",DBASE);
if (mysqli_connect_errno())
   {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
   }

?>