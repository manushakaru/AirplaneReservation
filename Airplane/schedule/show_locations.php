 <?php
 
 $hostname = "localhost";
    $username = "root";
    $password = "";
    $databaseName = "airplane";

    $connect = mysqli_connect($hostname,$username,$password,$databaseName);
	

	
	
	
	

?>


<html>
  <head>
    <title></title>
  </head>
  <body>
<?php
if(isset($_POST["check"]))  
 {
	 if(empty($_POST["to"]) || empty($_POST["from"]))  
      {  
          // echo '<script>alert("All Fields are required")</script>';  
      }  
	  else{
		  
		  $from = mysqli_real_escape_string($connect, $_POST["from"]);
		  $to = mysqli_real_escape_string($connect, $_POST["to"]);
		  $query = "select * from location where locateTo in (select location_id from location where location='$from') ";
		  $query2 = "select * from location where locateTo in (select location_id from location where location='$to') ";
		  $result1 = mysqli_query($connect,$query);
		  $result2 = mysqli_query($connect,$query2);
		  
	  
?> 
<form action="show_shedule.php"  target="show_shedule" method = "POST">
<table >
<tr>
<ul>
<td>
<select name="from_" required placeholder="From">
						<option value="1" disabled selected name="From">From</option>
						 <?php while ($row1 = mysqli_fetch_array($result1)):;?>
					<option value = "<?php echo $row1[1];?>"><?php echo $row1[1];?></option>
					<?php endwhile;?>
				
			</select>
<select  target="main" name="to_" required placeholder="To">
						<option value="2" disabled selected name="To">To</option>
						 <?php while ($row2 = mysqli_fetch_array($result2)):;?>
					<option value = "<?php echo $row2[1];?>"><?php echo $row2[1];?></option>
					<?php endwhile;?>
				
			</select>
<input type="hidden" value="<?php echo $m['time']; ?>" name="time">  
<input type="hidden" name="destination" value="<?php echo $_SERVER["REQUEST_URI"]; ?>"/>
			
			
<input  type="submit" name="check_" value="check" >
</ul>
<iframe name="show_shedule" src="show_shedule.php" width=210% height=230% frameBorder="0">
	</iframe>

</td>
</tr>
</table>
</form>


<?php
	  } 
	 
 }


?>
  </body>
</html>