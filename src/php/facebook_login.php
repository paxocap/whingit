<?php
header("Cache-Control: no-cache, must-revalidate");
header("Pragma: no-cache");
#header("Location: register.php");
session_start();
?>

<?php

require("dbconnect.php");

#user name integrity
#*******************

      if((empty($_POST['email'])==0) || (is_string($_POST['email'])==false))
        {
				$email = $_POST['email'];
                $query ="select user_email from user where user_email='$email'";
                $result = mysql_query($query) or die(mysql_error());

                $num_results=mysql_num_rows($result);
				
           
                $flag=0;
				echo $num_results;
                if($num_results!=0)
                { //echo mysql_result($result,$i,"user_id"),"  ",$_POST['login']; 
                        //echo "name is not unique";
                                $_SESSION['LOGGEDIN']=1;
   $sql="Select id, first_name, last_name from user where user_email='$user_email'
   ";
   $result=mysql_query($sql) or die("query failed:".mysql_error());
   
   $_SESSION['id'] = mysql_result($result,0,'id');
   $_SESSION['username']=mysql_result($result,0,'first_name')." ".mysql_result($result,0,'last_name');
	$_SESSION['email']	= $user_email;
   $loggedin =1 ; 
   $_SESSION['msg'] = "";
	header("Location: ../../index.php");

	exit;
								
                        
						
                } 
                if($flag==0)
                {
				     
                    $fname=addslashes($_POST['fname']);
					$lname=addslashes($_POST['lname']);
					$bday = $_POST['birthday'];
					$pieces = explode("/", $bday);
					$dob_year=addslashes($pieces[2]);
					$dob_month=addslashes($pieces[0]);
					$dob_day=addslashes($pieces[1]);
					
					//$location=addslashes($_POST['country']);
					$email=addslashes($_POST['email']);
					//$user_password=addslashes($_POST['passwd']);
					$city=addslashes($_POST['city']);
					
					$gender=addslashes($_POST['gender']);

					#integrity test of the information entered ends here

					#Entering the information in the table to sign up
				  $query ="INSERT INTO user ( first_name, last_name, dob_year, dob_month, dob_day , user_location , user_email , city, gender ) 
				  VALUES ('$fname' , '$lname', '$dob_year', '$dob_month', '$dob_day', '$location' , '$email' , '$city'  , '$gender'  )";
					//echo $query;		
					$result=mysql_query($query) or die("query failed:".mysql_error());
			
					
					$result = MYSQL_QUERY("SELECT id from user WHERE user_email='$email' ");
					$id = mysql_result($result,0,'id');
					

					
					if($result && $_FILES['userfile']['size'] > 0)
					{
						$tmpName  = $_FILES['userfile']['tmp_name'];
						$fp      = fopen($tmpName, 'r');
						$content = fread($fp, filesize($tmpName));
						$content = addslashes($content);
						fclose($fp);
						$query = "INSERT INTO uimage (id, content ) VALUES ( '$id', '$content')";
						
						$result=mysql_query($query) or die('Inserting image failed');
						
					} 
					
					if($result)
					{
						   $_SESSION['REGISTER']=1;
						  
							header("Location: ../../index.php");
					}
                    else
					{
					   echo "some error occured";
					}
                }

        }
       else
			{
			   echo "Problem retrieving email";
		}


#header("Location: ../../index.php");
require("closedb.php");

?>