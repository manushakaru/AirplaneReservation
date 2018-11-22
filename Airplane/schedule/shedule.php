 <?php
 
 $hostname = "localhost";
    $username = "root";
    $password = "";
    $databaseName = "airplane";

    $connect = mysqli_connect($hostname,$username,$password,$databaseName);
    $query = "SELECT * FROM location where locateTo is NULL ";
	$query2 = "SELECT * FROM location where locateTo is NULL";
    $result1 = mysqli_query($connect,$query);
	$result2 = mysqli_query($connect,$query2);
	
	

?>
<form action="show_locations.php"  target="show_locations" method = "POST">
<table >
<tr>
<ul>
<td>
<select name="from" required placeholder="From">
						<option value="1" disabled selected name="From">From</option>
						 <?php  while ($row1 = mysqli_fetch_array($result1)):;?>
					<option value = "<?php echo $row1[1];?>"><?php echo $row1[1];?></option>
					<?php endwhile;?>
				
			</select>
<select  target="main" name="to" required placeholder="To">
						<option value="2" disabled selected name="To">To</option>
						 <?php while ($row2 = mysqli_fetch_array($result2)):;?>
					<option value = "<?php echo $row2[1];?>"><?php echo $row2[1];?></option>
					<?php endwhile;?>
				
			</select>
<input type="hidden" value="<?php echo $m['time']; ?>" name="time">  
<input type="hidden" name="destination" value="<?php echo $_SERVER["REQUEST_URI"]; ?>"/>
			
			
<input  type="submit" name="check" value="check" >
</ul>

<iframe name="show_locations" src="show_locations.php" width=250% height=300%>
	
	

	</iframe>
</td>
</tr>
</table>
</form>