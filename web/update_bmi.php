<?php
/*********************
**** Arudhra Innovations *****
**** Sep 22, 2015 ****
**********************/

/* Following code will delete a row in table by referring id */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';
	
// connecting to db


// check for post data
$data = json_decode(file_get_contents("php://input"));
$get_id = ($data->email);
$get_field_1 = ($data->field_1);
$get_field_2 = ($data->field_2); //date
		$get_created_date =date('Y-m-d');

// get all news
$result = mysqli_query($conn,"INSERT INTO report( email,field_1,field_2,field_3,created_date	)
					VALUES(	'$get_id','$get_field_1', '$get_field_2', 'Completed', 
					'$get_created_date')");
	
// check for empty result
if ($result)
{
	// success	
	$response["success"] = 1;
	// echoing JSON response
	echo json_encode($response);
} 
else
{
	$response["success"] = 0;
	// echoing JSON response
	echo json_encode($response);
	
}

	
?>