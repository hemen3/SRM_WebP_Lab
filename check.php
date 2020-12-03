
<?php      
	include('connection.php');
	$username = mysqli_real_escape_string($con,$_POST['user']);  
    $password = mysqli_real_escape_string($con,$_POST['pass']);  

      
        $sql = "select * from users where username = '$username' and pwd = '$password' LIMIT 1";  
        $result = mysqli_query($con, $sql);  
        $count = mysqli_num_rows($result);  
          
        if($count == 1):?>
			<html>  
			<head>  
				<title>Easy Flight</title>  
				<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=VT323'>
				<link rel="icon" href="/FBS/images/favicon.ico" type="image/x-icon">  
				<link rel = "stylesheet" type = "text/css" href = "/FBS/style.css">   
			</head>
			<body>
            <script>alert("Login successful"); 
			window.location.replace("/FBS/pages/infos2.xml"); 
			</script>
			</body>
			</html>			
       <?php else: ?>
			<html>  
			<head>  
				<title>Easy Flight</title>  
				<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=VT323'>
				<link rel="icon" href="/FBS/images/favicon.ico" type="image/x-icon">  
				<link rel = "stylesheet" type = "text/css" href = "/FBS/style.css">   
			</head>
			<body>
			<script>alert("Login failed. Invalid username or password."); 
			window.location.replace("/FBS/pages/login.html"); 
			</script>
			</body>
			</html>
       <?php endif; ?> 
