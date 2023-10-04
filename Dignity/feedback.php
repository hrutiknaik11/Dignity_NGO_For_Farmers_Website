<?php
$server_name="localhost";
$username="id15501805_root";
$password="Hrutiknaik88#";
$database_name="id15501805_database123";

$conn=mysqli_connect($server_name,$username,$password,$database_name);
if(!$conn)
{
	die("Connection Failed:" .mysqli_connect_error());

}

if(isset($_POST['save']))
{
	$userid = $_POST['userid'];
	$email = $_POST['email'];
	$experience = $_POST['experience'];
	$message = $_POST['message'];
	$sql_query = "INSERT INTO feedback (userid,email,experience,message) VALUES ('$userid','$email','$experience','$message')";
	if(mysqli_query($conn, $sql_query))
	{
		echo "<script type='text/javascript'>alert('Feedback Recorded');
			  window.location='homepage.html';
			  </script>";
	}
	else
	{
	    echo "Error:" . $sql ."" . mysqli_error($conn);  	
	}
	mysqli_close($conn);   
}
?>