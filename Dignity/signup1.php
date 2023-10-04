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
	$password = $_POST['password'];
	$userid = $_POST['userid'];
	$address = $_POST['address'];
	$country = $_POST['country'];
    $zip = $_POST['zip'];
    $email = $_POST['email'];
    $contact = $_POST['contact'];
	$sql_query = "INSERT INTO entry_details1 (first_name,password,userid,address,country,zip_code,email,contact) VALUES ('$fname','$password','$userid','$address','$country','$zip','$email','$contact')";
	if(mysqli_query($conn, $sql_query))
	{
		echo "<script type='text/javascript'>alert('Account Created,Please Login');
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