 <?php
 
 $hostname = "localhost";
    $username = "root";
    $password = "";
    $databaseName = "airplane";

    $connect = mysqli_connect($hostname,$username,$password,$databaseName);
	?>
	
	<html>
  <head>
    <title>Form Iframe Demo</title>
  </head>
  <body>
  <?php
  if(isset($_POST["check_"]))  
 {
	 if(empty($_POST["to_"]) || empty($_POST["from_"]))  
      {  
          // echo '<script>alert("All Fields are required")</script>';  
      }
	  else{
		  
		  
		  $from_ = mysqli_real_escape_string($connect, $_POST["from_"]);
		  $to_ = mysqli_real_escape_string($connect, $_POST["to_"]);
		  $query_from = "SELECT location_id FROM location where location='$from_ ' ";
		  $query_to = "select location_id from location where location='$to_ ' ";
		  $result_from = mysqli_query($connect,$query_from);
		  $result_to = mysqli_query($connect,$query_to);
		 // echo $result_from;
		  if((mysqli_num_rows($result_to) > 0)  && (mysqli_num_rows($result_from) > 0) ) 
           {
			   $origin_location_id;
			   $destination_location_id;
			   while($row_from = mysqli_fetch_array($result_from)){
			   $origin_location_id=$row_from[0];}
			   while($row_to = mysqli_fetch_array($result_to)){
			$destination_location_id=$row_to[0];}
			
			
			
			$combine_origin= "select airport_code from airport natural left outer join location where location_id=$origin_location_id ";
			$combine_destination= "select airport_code from airport natural left outer join location where location_id=$destination_location_id ";
			$result_port_ori = mysqli_query($connect,$combine_origin);
		    $result_port_des = mysqli_query($connect,$combine_destination);
			
			
			if((mysqli_num_rows($result_port_ori) > 0) &&  (mysqli_num_rows($result_port_des) )){
				
			$origin_airport_id;
		    $destination_airport_id;
			while($row_port_ori = mysqli_fetch_array($result_port_ori)){
			   $origin_airport_id=$row_port_ori[0];}
			while($row_port_des = mysqli_fetch_array($result_port_des)){
			   $destination_airport_id=$row_port_des[0];}
			   
			  echo $origin_airport_id;
			  echo $destination_airport_id;
			  
			  
			 $route_sql= "select route_id from route where origin=$origin_airport_id  and destination=$destination_airport_id ";
			 $result_route = mysqli_query($connect,$route_sql);
			 if((mysqli_num_rows($result_route) > 0)){
				 $route_id;
				 while($row_details = mysqli_fetch_array($result_route)){
			   $route_id=$row_details[0];}
			   echo $route_id;
			   
			   $schedule_day="select day from predefined_schedule where route_id=$route_id ";
			   $schedule_deprturetime="select departure_time from predefined_schedule where route_id=$route_id ";
			   $schedule_arrivaltime="select arrival_time from predefined_schedule where route_id=$route_id ";
			   $result_schedule_day = mysqli_query($connect,$schedule_day);
			   $result_schedule_dep = mysqli_query($connect,$schedule_deprturetime);
			   $result_schedule_arr = mysqli_query($connect,$schedule_arrivaltime);
			   
			   if((mysqli_num_rows($result_schedule_day) > 0)  && (mysqli_num_rows($result_schedule_dep) > 0) && (mysqli_num_rows($result_schedule_arr) > 0)){
				   
				   $day;
				   $dep_time;
				   $arr_time;
			      
				   
				   
			   }
			   
				 
			 }
			 
			}
			   
		   } 
		  
		  
		  
	  }
	 
 }
?>
  </body>
  </html>