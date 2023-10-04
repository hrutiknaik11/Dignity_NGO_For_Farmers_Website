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
	$fname = $_POST['fname'];
	$email = $_POST['email'];
	$donation = $_POST['donation'];
	$contact = $_POST['contact'];
	$mode = $_POST['mode'];
	$sql_query = "INSERT INTO do (fname,email,donation,contact,mode) VALUES ('$fname','$email','$donation','$contact','$mode')";
	if(mysqli_query($conn, $sql_query))
	{
		echo "<script type='text/javascript'>alert('Thankyou for donation');
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