<?php
session_start();
$conn = new mysqli("localhost", "root", "", "employee-scheduling");
if($conn->connect_error){
die("connection failed:".connect_error);
}
// else {
//     echo "<script> alert('connection successful')</script>";
// }
?>