<?php
/*********************

**** CPanel ******************
*********/

/* Following code will match admin login credentials */

//user temp array
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db


$data = json_decode(file_get_contents("php://input"));

$get_email = ($data->email);

$result = mysqli_query($conn,"SELECT * FROM level where email='$get_email' and field_1='BMI' ");

if(mysqli_num_rows($result))
{
	$response["details"] = array();	

	while($Alldetails = mysqli_fetch_array($result))
	{
		// temp user array
		$details = array();
		$details = $Alldetails;
		
		$get_weight = $Alldetails["field_2"];
		$get_height = $Alldetails["field_3"];
		
		$get_field_2 = $get_weight/( (($get_height *$get_height )/100) ) * 100 ; 
		
		if ($get_field_2 < 18.5 )  // less than 4 
		{
			$get_field_3 = "Underweight";
		}
		else if (( $get_field_2 >= 18.5 )  & ( $get_field_2 <= 25))  // bt than 4 - 6 
		{
			$get_field_3 = "Normal";
		}
		else if (( $get_field_2 >= 25 )  & ( $get_field_2 <= 30))  // bt than 4 - 6 
		{
			$get_field_3 = "Overweight";
		}

		else if ($get_field_2 > 30 )   // greater than 6
		{
			$get_field_3 = "Obese";
		}
		else {
			null;
		}
		
		$details["field_4"] = $get_field_3;
		$details["get_bmi"] =round($get_field_2,2);
		
	}	
	array_push($response["details"],$details);

	$response["success"] = 1;
	echo json_encode($response);

}
else
{
	$response["success"] = 0;	
	echo json_encode($response);
}
	

?>