<?php
$con=mysqli_connect("localhost","id15501805_root","Hrutiknaik88#","id15501805_database123") or die("error".mysql_error);
$sel=mysqli_query($con,"SELECT * from entry_details1");
$x=0;
while($log=mysqli_fetch_array($sel))
	{
		if($_POST['userid']==$log['userid'] && $_POST['password']==$log['password'])
			{
				++$x;
			}
	}
if($x==1)
	{
		echo "<script type='text/javascript'>alert('Successfully Logged In');
			  window.location='shopping-cart/index.php';
			</script>";
	}
else
	{
		echo "<script type='text/javascript'>alert('Wrong Username or Password');
			  window.location='finallogin.html';
			</script>";
	}
?>