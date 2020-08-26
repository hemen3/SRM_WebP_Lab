<html>
<head>  
    <title>Easy Flight</title>  
    <link rel="icon" href="/favicon.ico" type="image/x-icon">  
    <link rel = "stylesheet" type = "text/css" href = "style.css">   
</head>
<body>
<div id = "frm">
<?php      
    include ('connection.php');  
    $username = $_POST['user'];  
    $password = $_POST['pass'];  
     
        $username = stripcslashes($username);  
        $password = stripcslashes($password);  
        $username = mysqli_real_escape_string($con, $username);  
        $password = mysqli_real_escape_string($con, $password);  
      
        $sql = "select * from login where username = '$username' and password = '$password'";  
        $result = mysqli_query($con, $sql);  
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);  
          
        if($count == 1){  
            echo "<h1><center> Login successful </center></h1>";  
        }  
        else{  
            echo "<h1> Login failed.</h1>";
			echo "<h2> Invalid username or password.</h2>";			
        }     
?>
</div>
</body>
</html>