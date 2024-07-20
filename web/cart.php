<?php


/* Following code will retrieve table values */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';
	
// connecting to db

	
// get all jobs

$result = mysqli_query($conn,"SELECT * FROM complaint  ");
$count = 0;
$male = 0;$female = 0;
$count_20_40 =0;$count_40_60 =0;$count_60_80 =0;$weight_20_40 =0;
$weight_40_60 =0;$weight_60_80 =0;
		$total =0;	$heart =0;	$skin =0;	$General =0;	$Lung =0;
		$Eye =0;	$Bone =0;	$Scan =0;$Tooth =0;
if (mysqli_num_rows($result))
{
	$response["total"] = array();
	while($AllProducts = mysqli_fetch_array($result))
	{
		// temp user array
		
		$total = array();
		//$total = $AllProducts;
		$get_total_gender = $AllProducts['field_8'];
		$age = $AllProducts['field_2'];
		$weight = $AllProducts['field_4'];
		$diease = $AllProducts['field_7'];
		
		if (strcmp($get_total_gender,"Male")==0)
		{
			$male++;
		}
		else 
		{
			$female++;
		}
		
			if (($weight<40) & ($weight>25))
			{
				$weight_20_40++;
			}
			if (($weight<60) & ($weight>41))
			{
				$weight_40_60++;
			}
			if (($weight<80) & ($weight>61))
			{
				$weight_60_80++;
			}
		
		
			if (($age<40) & ($age>25))
			{
				$count_20_40++;
			}
			if (($age<60) & ($age>41))
			{
				$count_40_60++;
			}
			if (($age<80) & ($age>61))
			{
				$count_60_80++;
			}
		
		if (strcmp($diease,"heart")==0)
			{
				$heart++;
			}
			
		if (strcmp($diease,"skin")==0)
			{
				$skin++;
			}
		if (strcmp($diease,'Lung' )==0)
			{
				$Lung++;
			}
		if (strcmp($diease,'General' )==0)
			{
				$General++;
			}
		if (strcmp($diease,'Bone' )==0)
			{
				$Bone++;
			}
		if (strcmp($diease,'Eye' )==0)
			{
				$Eye++;
			}
		if (strcmp($diease,'Scan' )==0)
			{
				$Scan++;
			}
		if (strcmp($diease,'Tooth' )==0)
			{
				$Tooth++;
			}
			
		
		$total["male"] = $male;		
		$total["female"] = $female;	
		$total["diease"] =$diease ;
		$total["heart"] =$heart ;
		$total["Lung"] =$Lung ; 
		$total["skin"] =$skin ;
		$total["General"] =$General ;
		$total["Tooth"] =$Tooth ;
		$total["Eye"] =$Eye ;
		$total["Bone"] =$Bone ;
		$total["count_20_40"] = $count_20_40;
		$total["count_40_60"] = $count_40_60;
		$total["count_60_80"] = $count_60_80;	
		$total["weight_20_40"] = $weight_20_40;
		$total["weight_40_60"] = $weight_40_60;
		$total["weight_60_80"] = $weight_60_80;		
	}	
			array_push($response["total"],$total);		

	$response["success"] = 1;
	echo json_encode($response);
} 
else
{
	$response["success"] = 0;
	echo json_encode($response);
}
?>