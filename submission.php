<?php
include("connect_db.php");

if(isset($_POST['ok_btn']))
{
    $email =$_POST['email'];
    $pwd   =$_POST['password'];
    $c_pwd =$_POST['confirm_password'];
    $fname =$_POST['firstname'];
    $mname =$_POST['middlename'];
    $lname =$_POST['lastname'];
    $addr  =$_POST['address'];
    $gender =$_POST['optGender'];
    $bday  =$_POST['birth_month'] . "/" . $_POST['birth_date'] . "/" . $_POST['birth_year'];
    $fit_l =$_POST['optFitness'];
    $fit_w =$_POST['optLengthofworkout'];
    $w_g   =$_POST['optWorkoutgoals'];
    $equip  =$_POST['optEquipment'];
    
echo $email  . "<br>";
echo $pwd    . "<br>";
echo $c_pwd  . "<br>";
echo $fname  . "<br>";
echo $mname  . "<br>";
echo $lname  . "<br>";
echo $addr   . "<br>";
echo $gender . "<br>";
echo $bday   . "<br>";
echo $fit_l  . "<br>";
echo $fit_w  . "<br>";
echo $w_g    . "<br>";
echo $equip  . "<br>";

if($pwd != $c_pwd)
{
    echo "Password Not Matched."; 
}
else
{
echo "Password Matched.";
$reg_sql = "INSERT INTO `table1_registration` (`email`,`password`,`firstname`,`middlename`,`lastname`,`address`,`optGender`,`birth_month`,`optFitness`,`optLengthofworkout`,`optWorkoutgoals`,`optEquipment`)
            VALUES ('$email' , '$pwd' , '$fname' , '$mname' , '$lname' , '$addr' , '$gender' , '$bday' , '$fit_l' , '$fit_w' , '$w_g' , $equip')";
echo $reg_sql;
    if(mysqli_query($con, $reg_sql))
    {
        echo "record has been added to your database.";
    }
    else
    {
        echo "Error: " . $reg_sql . "<br>" . mysqli_error($con);
    }
    mysqli_close($con);
 }
}  

?>