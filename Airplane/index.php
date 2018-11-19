

<?php  
 $connect = mysqli_connect("localhost", "root", "", "airplane");  
 session_start();  
 if(isset($_SESSION["email"]))  
 {  
		$email=$_SESSION["email"];
		
	  
 }  
 if(isset($_POST["register"]))  
 {  
      if(empty($_POST["email"]) || empty($_POST["password"]))  
      {  
           echo '<script>alert("All Fields are required")</script>';  
      }  
      else  
      {  
  
		$name = mysqli_real_escape_string($connect, $_POST["username"]);  
        $password = mysqli_real_escape_string($connect, $_POST["password"]);  
		$email=mysqli_real_escape_string($connect, $_POST["email"]);
		$mobile=mysqli_real_escape_string($connect, $_POST["mobile"]);
		$age=mysqli_real_escape_string($connect, $_POST["age"]);
        //$password = md5($password); 
		

		$sql= "SELECT * FROM customer WHERE email='$email'";
		$result= mysqli_query($connect,$sql);
		$resultcheck=mysqli_num_rows($result);
		
		if(!preg_match("/^[a-zA-Z]*$/",$name) ){
			echo '<script>alert("Invalid username")</script>';
		}
		
		
		else{
		if($resultcheck>0){
			 echo '<script>alert("User name taken try another one")</script>';////////////////////////////////////////////////////
			}
		else{
			if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
				echo '<script>alert("Invalid E-mail address")</script>';
				
			}
			else{
           $query = "INSERT INTO customer (name,email,password,age,customer_type,mobile_no) VALUES('$name','$email','$password','$age','Frequent','$mobile')";		   
           if(mysqli_query($connect, $query))  
           {  
                echo '<script>alert("Registration Done")</script>';  
           } 
		}		   
	  }
	  }
      }  
 }  
 if(isset($_POST["login"]))  
 {  
      if(empty($_POST["email"]) || empty($_POST["password"]))  
      {  
           echo '<script>alert("Both Fields are required")</script>';  ///empty alert
      }  
      else  
      {  
           $email = mysqli_real_escape_string($connect, $_POST["email"]);  
           $password = mysqli_real_escape_string($connect, $_POST["password"]); 
			##$type = mysqli_real_escape_string($connect, $_POST["type"]);
           //$password = md5($password); 
			
           $query = "SELECT * FROM customer WHERE  email = '$email' AND password = '$password' ";  
           $result = mysqli_query($connect, $query);
			
           if(mysqli_num_rows($result) > 0)  
           {  
				
				
				
				
                $_SESSION['email'] = $email; 
				
				
				$email=$_SESSION["email"];
		
		echo '<script>alert("Done")</script>';
                ##header("location:entry.php"); 
				
           }  
           else  
           {  
                echo '<script>alert("Wrong User Details")</script>';  
           }  
      }  
 }  
 ?>  
 <!DOCTYPE html>  
 <html>  
      <head>  
           <title>Airplane Reservation</title>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
      </head>

	<style>
	body, html {
		height: 100%;
		margin: 0;
}

.bg {
   
    background-image: url("");

  
    height: 900px;; 

    
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
#regi{
	font-size:21px;
	
}
#logi{
	font-size:21px;
	
}
#hed{
	
}

h1 { color: red; font-family: 'Lato', sans-serif; font-size: 54px; font-weight: 300; line-height: 58px; margin: 0 0 33px; }

h2 { color: red; font-family: 'Lato', sans-serif; font-size: 25px; font-weight: 150; line-height: 25px;
p { color: #adb7bd; font-family: 'Lucida Sans', Arial, sans-serif; font-size: 16px; line-height: 26px; text-indent: 30px; margin: 0; }


a { color: #fe921f; text-decoration: underline; }


a:hover { color: #ffffff }


.date { background: #fe921f; color: #ffffff; display: inline-block; font-family: 'Lato', sans-serif; font-size: 12px; font-weight: bold; line-height: 12px; letter-spacing: 1px; margin: 0 0 30px; padding: 10px 15px 8px; text-transform: uppercase; }



	
	</style>
	  
      <body >  
	  <div class="bg">
           <br /><br />  
           <div class="container" style="width:500px;">  
                <h1 id="hed" align="center">Airplane Reservation</h1>  
                <br />  
                <?php  
                if(isset($_GET["action"]) == "login")  
                {  
                ?>  
                <h2 id="h2" align="center">Login</h2>  
				
				
				
				
                <br />  
                <form method="post">  
                     <label>Enter email</label>  
                     <input type="text" name="email" class="form-control" />  
                     <br />  
                     <label>Enter Password</label>  
                     <input type="password" name="password" class="form-control" />  
                     <br />  
                     <input type="submit" name="login" value="Login" class="btn btn-info" />  
                     <br />  
                     <p id="regi" align="center"><a href="index.php">Register</a></p>  
                </form>  
                <?php       
                }  
                else  
                {  
                ?>  
                <h2 id="h2" align="center">Register</h2>  
                <br />  
                <form method="post">  
                     <label>Enter Username</label>  
                     <input type="text" name="username" placeholder="username" class="form-control" />  
                     <br />
					 
					 <label>Enter E-mail</label>  
                     <input type="text" name="email" placeholder="E-mail" class="form-control" />  
                     <br /> 

					 
					  
                     <label>Enter Password</label>  
                     <input type="password" name="password" placeholder="password" class="form-control" />  
                     <br />
					 
					 <label>Mobile Number</label>  
                     <input type="text" name="mobile" placeholder="mobile" class="form-control" />  
                     <br />
					 
					 <label>Age</label> 
					 <input type="text" name="age" placeholder="age" class="form-control" />  
                     <br />
					 
                     <input type="submit" name="register" value="Register" class="btn btn-info" />  
                     <br /> 

					
					 
					 
					 
                     <p id="logi" align="center"><a href="index.php?action=login">Login</a></p> 
                </form>  
                <?php  
                }  
                ?>  
           </div>  
		   </div>
      </body>  
 </html> 