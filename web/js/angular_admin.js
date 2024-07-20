var app = angular.module("myapp", ['ngCookies']);
app.controller("myappCtrl", function($scope, $cookies, $cookieStore, $http) 
{
	
/****************************************************************************/
/************************** Get Admin Details ***********************************/
/****************************************************************************/	
	$scope.cook_admin_email = $cookieStore.get("cook_admin_email");

	
/****************************************************************************/
/************************** User Logout ************************************/
/****************************************************************************/		
	$scope.admin_logout = function() 
	{
		if(confirm("Are You Sure?"))
		{
			$cookies.bn_adm_email = "";
			window.location = "home.html";
			return;
		}
		else
		{
			return false;
		}
	}
/****************************************************************************/
/************************** Add Complaint *********************************/
/****************************************************************************/
	$scope.create_diet = function() 
	{		
		$http.post('create_diet.php', {
		'field_1':$scope.field_1,'field_2':$scope.field_2,'field_3':$scope.field_3,
		'field_4':$scope.field_4,'field_5':$scope.field_5,'field_6':$scope.field_6,
		'field_7':$scope.field_7,'field_8':$scope.field_8,'email':$scope.cook_admin_email
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Food Diet Created Successfully");
				window.location = "admin_home.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
			{
				alert("Un Successfully");
			}
        });
    }
/****************************************************************************/
/************************** Add Complaint *********************************/
/****************************************************************************/
	$scope.create_bmi = function() 
	{		
	$scope.field_6 ="Nil";
	$scope.field_7 ="Nil";
	$scope.field_8 ="Nil";
		$http.post('create_bmi.php', {
		'field_1':$scope.field_1,'field_2':$scope.field_2,'field_3':$scope.field_3,
		'field_4':$scope.field_4,'field_5':$scope.field_5,'field_6':$scope.field_6,
		'field_7':$scope.field_7,'field_8':$scope.field_8,'email':$scope.cook_admin_email
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("BMI Diet Created Successfully");
				window.location = "admin_home.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
			{
				alert("Un Successfully");
			}
        });
    }
/****************************************************************************/
/************************** Add Complaint *********************************/
/****************************************************************************/
	$scope.complaint_status = function(cus_id) 
	{		
		window.location = "admin_post_complaint.html";
		$cookieStore.put("cook_cus_id",cus_id);
		return;				
    }
	$scope.cook_cus_id = $cookieStore.get("cook_cus_id");

	$scope.complaint_solution = function() 
	{		
		$http.post('complaint_status.php', {
		'field_9':$scope.field_9,'field_10':$scope.field_10,
		'field_11':$scope.field_11,	'cus_id':$scope.cook_cus_id
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Submitted Successfully");
				window.location = "admin_view_complaint.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
				{
					alert("Un Successfully");
				}
        });
    }
/****************************************************************************/
/************************** All Complaint *********************************/
/****************************************************************************/

	$http.post('cart.php')
	.success(function(data, status, headers, config) 
	{
			$scope.total = data.total;
    });
	
	$http.post('complaint_get_all.php')
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			$scope.details = data.details;
		}
		else
		{
			$scope.details = "No Data Found !!!";
		}
    });
	
	$http.post('feedback_get.php')
	.success(function(data, status, headers, config) 
	{
			$scope.feedback_details = data.details;
    });
	
	$http.post('diet_get.php')
	.success(function(data, status, headers, config) 
	{
			$scope.diet_details = data.details;
    });
	
	
/****************************************************************************/
/************************** Add Requriments *********************************/
/****************************************************************************/
	
	$scope.create_requirment = function() 
	{		
		$http.post('create_order.php', {
		'field_1':$scope.field_1,'field_2':$scope.field_2,'field_3':$scope.field_3,
		'field_4':$scope.field_4,'email':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Requirment Submitted Successfully");
				window.location = "home.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
				{
					alert("Un Successfully");
				}
        });
    }
	
/****************************************************************************/
/************************** Admin Update   *******************/
/****************************************************************************/
	$scope.update_diet = function(cus_id,field_1,field_2,field_3,field_4,field_5,field_7,field_8,field_9) 
	{		
		window.location = "update_food_diet.html";
		$cookieStore.put("cook_cus_id",cus_id);
		$cookieStore.put("cook_field_1",field_1);
		$cookieStore.put("cook_field_2",field_2);
		$cookieStore.put("cook_field_3",field_3);
		$cookieStore.put("cook_field_4",field_4);
		$cookieStore.put("cook_field_5",field_5);
		$cookieStore.put("cook_field_6",field_6);
		$cookieStore.put("cook_field_7",field_7);
		$cookieStore.put("cook_field_8",field_8);
		$cookieStore.put("cook_field_9",field_9);
		return;
	}	
	
	$scope.cook_cus_id = $cookieStore.get("cook_cus_id");
	$scope.cook_field_1 = $cookieStore.get("cook_field_1");
	$scope.cook_field_2 = $cookieStore.get("cook_field_2");
	$scope.cook_field_3 = $cookieStore.get("cook_field_3");
	$scope.cook_field_4 = $cookieStore.get("cook_field_4");
	$scope.cook_field_5 = $cookieStore.get("cook_field_5");
	$scope.cook_field_6 = $cookieStore.get("cook_field_6");
	$scope.cook_field_7 = $cookieStore.get("cook_field_7");
	$scope.cook_field_8 = $cookieStore.get("cook_field_8");
	$scope.cook_field_9 = $cookieStore.get("cook_field_9");

	$scope.save_diet = function() 
	{		
		$http.post('save_diet.php',{
		'id':$scope.cook_cus_id,'field_1':$scope.cook_field_1,'field_2':$scope.cook_field_2,
		'field_3':$scope.cook_field_3,'field_4':$scope.cook_field_4,'field_5':$scope.cook_field_5,'field_6':$scope.cook_field_6,'field_7':$scope.cook_field_7,'field_8':$scope.cook_field_8})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Submited successfully");
				window.location = "view_food_diet_admin.html";
				return;				
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }
/****************************************************************************/
/************************** View All Requirment *****************************/
/****************************************************************************/
	$http.post('requirment_get_all.php')
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			$scope.alldetails = data.alldetails;
		}
		else
		{
			$scope.alldetails = "No Data Found !!!";
		}
    });


/****************************************************************************/
/************************** Admin Update Complaints Solutions ***************/
/****************************************************************************/
	$scope.post_complaint_solution = function(cus_id,field_9,field_10,field_11) 
	{		
		window.location = "admin_post_complaint.html";
		$cookieStore.put("cook_cus_id",cus_id);
		$cookieStore.put("cook_field_9",field_9);
		$cookieStore.put("cook_field_10",field_10);
		$cookieStore.put("cook_field_11",field_11);
		return;				
    }
	$scope.cook_cus_id = $cookieStore.get("cook_cus_id");
	$scope.cook_field_9 = $cookieStore.get("cook_field_9");
	$scope.cook_field_10 = $cookieStore.get("cook_field_10");
	$scope.cook_field_11 = $cookieStore.get("cook_field_11");

	$scope.admin_complaint_solution = function() 
	{		
		$http.post('admin_complaint_solution.php', {
		'cook_field_9':$scope.cook_field_9,'cook_field_10':$scope.cook_field_10,
		'cook_field_11':$scope.cook_field_11,'cook_cus_id':$scope.cook_cus_id
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Submitted Successfully");
				window.location = "admin_view_complaint.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
				{
					alert("Un Successfully");
				}
        });
    }
	

/****************************************************************************/
/************************** View All Requirment *****************************/
/****************************************************************************/
	$http.post('customer_get.php')
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			$scope.cus_details = data.details;
		}
		else
		{
			$scope.cus_details = "No Data Found !!!";
		}
    });



/****************************************************************************/
/************************** Delete Sales   *********************************/
/****************************************************************************/
	// products_delete
	$scope.delete_diet = function(cus_id) 
	{		
        $http.post('delete_diet.php', 
		{
		'cus_id': cus_id
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Deleted Successful");
				window.location = "view_food_diet_admin.html";	
				return;
			}
			else if(data.success == 0)
			{
				alert("Error While Deleting Product!!");
			}
			else
			{
				alert("No id found");
			}
        });
    }
	
			
	
});