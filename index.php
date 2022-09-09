
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank you</title>
    <link rel="stylesheet" href="thankyou.css">
</head>
<body>
    <div class="container">
        <div class="thankyou">
            <h1>Your message has been sent, our team will get back to you as soon as possible.</h1>
        </div>
    </div>
   
<?php 
$server = "localhost";
$username = "root";
$password = "";

$title = $_POST['title'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$number = $_POST['number'];
$address = $_POST['address'];
$date = $_POST['date'];
$time = $_POST['time'];
$services = $_POST['services'];
$comment = $_POST['comment'];

$con = mysqli_connect($server,$username,$password);
if(!$con){
    die("Connection faield due to". mysqli_connect_error());
}
 $sql = "INSERT INTO `appointment_form`.`appointment_form` ( `Title`, `First Name`, `Last Name`, `Email ID`, `Phone Number`, `Addresss`, `Appointment Date`, `Appointment Time`, `Services`, `Comments`) 
 VALUES ( '$title','$firstname','$lastname','$email','$number','$address','$date','$time','$services','$comment');";


 if($con->query($sql) == true){
   
 }else{
    echo "Error : $sql <br> $con->error";
 }

 $con->close();
?>
</body>
</html>