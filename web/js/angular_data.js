var app = angular.module("myapp", ['ngCookies']);
app.controller("myappCtrl", function($scope, $cookies, $cookieStore, $http) 
{
	
/****************************************************************************/
/************************** Get Admin Details ***********************************/
/****************************************************************************/	
	$scope.cook_user_email = $cookieStore.get("cook_user_email");

			
	$scope.user_logout = function() 
	{
		if(confirm("Are You Sure?"))
		{
			$cookies.cook_user_email = "";
			$cookies.cook_user_email = "";
			window.location = "index.html";
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
	$scope.create_complaint = function() 
	{		
		$http.post('create_complaint.php', {
		'field_1':$scope.field_1,'field_2':$scope.field_2,'field_3':$scope.field_3,
		'field_4':$scope.field_4,'field_5':$scope.field_5,'field_6':$scope.field_6,
		'field_7':$scope.field_7,'field_8':$scope.field_8,'email':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Complaint Created Successfully");
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
/************************** View Diet Details *********************************/
/****************************************************************************/
	$http.post('diet_get.php')
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			$scope.diet_details = data.details;
		}
		else
		{
			$scope.diet_details = "No Data Found !!!";
		}
    });
	
	
	$http.post('get_user_blood.php', {'email': $scope.cook_user_email})
	.success(function(data, status, headers, config) 
	{
			$scope.user_blood_details = data.details;
    });
	
	
	$scope.update_level_blood = function(field_1,field_2) 
	{
		window.location = "update_level_blood.html";
		$cookieStore.put("cook_field_1",field_1);
		$cookieStore.put("cook_field_2",field_2);
		return;
	}	
	
	$scope.cook_field_1 = $cookieStore.get("cook_field_1");
	$scope.cook_field_2 = $cookieStore.get("cook_field_2");

	 

	$scope.save_health_blood = function() 
	{		
		$http.post('save_health_blood.php',{
		 'email':$scope.cook_user_email, 'field_1':$scope.cook_field_1,
		 'field_2':$scope.field_2 ,'field_3':$scope.field_3 })
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Updated successfully");
				window.location = "view_user_complaint.html";
				return;				
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }
	
	
	$scope.view_advice = function(field_4) 
	{
		window.location = "view_advice_details.html";
		$cookieStore.put("cook_field_4",field_4);
		return;
	}	
	
	$scope.cook_field_4 = $cookieStore.get("cook_field_4");
	$scope.cook_field_1 = $cookieStore.get("cook_field_1");

	$http.post('get_advice.php', {'email': $scope.cook_field_4})
	.success(function(data, status, headers, config) 
	{
			$scope.all_advice_details = data.details;
    });
	
	$http.post('get_record.php', {'email': $scope.cook_user_email})
	.success(function(data, status, headers, config) 
	{
			$scope.all_record_details = data.details;
    });
	
	$http.post('get_all_record.php')
	.success(function(data, status, headers, config) 
	{
			$scope.record_details = data.details;
    });
	
	
	$scope.view_history = function(field_1) 
	{
		window.location = "view_history.html";
		$cookieStore.put("cook_field_1",field_1);
		return;
	}	
	
	$http.post('get_user_history.php', {'email': $scope.cook_user_email})
	.success(function(data, status, headers, config) 
	{
			$scope.user_history_details = data.details;
    });
	
	
	

/**************************************************************************/
/************************** update_present User  *********************************/
/****************************************************************************/
	// products_delete
	$scope.update_present = function(field_1,field_2) 
	{		
				
        $http.post('update_bmi.php', 
		{
		'email': $scope.cook_user_email,'field_1': field_1,'field_2': field_2
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Updated Successful");
				window.location = "view_advice_details.html";
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


	$scope.exportData = function () {
        var blob = new Blob([document.getElementById('exportable').innerHTML], {
            type: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8"
        });
        saveAs(blob, "Report.xls");
		};
		

/****************************************************************************/
/************************** admin Details *********************************/
/****************************************************************************/
	$http.post('admin_get.php')
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			$scope.admin_details = data.details;
		}
		else
		{
			$scope.admin_details = "No Data Found !!!";
		}
    });
/****************************************************************************/
/************************** User View Complaint *********************************/
/****************************************************************************/
	$http.post('complaint_get.php', {'email': $scope.cook_user_email})
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
/************************** Add Requirment ***********************************/
/****************************************************************************/
	$http.post('requirment_get.php', {'email': $scope.cook_user_email})
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			$scope.order_details = data.details;
		}
		else
		{
			$scope.order_details = "No Data Found !!!";
		}
    });

/****************************************************************************/
/************************** Add Requriments *********************************/
/****************************************************************************/
	$scope.create_feedback = function() 
	{		
		$http.post('create_feedback.php', 
		{
		'field_1':$scope.field_1,'field_2':$scope.field_2,'email':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Feedback Submitted Successfully");
				window.location = "home.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else if(data.success == 0)
			{
				alert("Error In Creating");
			}
			else
				{
					alert("Un Successfully");
				}
        });
    }

/****************************************************************************/
/************************** User Update *********************************/
/****************************************************************************/
	
		$http.post('get_user_info.php',
		{
			'email':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
				$scope.userdetails = data.details;
          });
		  
$scope.user_update_info = function(name,password,mobile) 
	{
		window.location = "user_info_edit.html";
		$cookieStore.put("cook_name",name);
		$cookieStore.put("cook_password",password);
		$cookieStore.put("cook_mobile",mobile);
		return;
	}	
	
	$scope.cook_name = $cookieStore.get("cook_name");
	$scope.cook_password = $cookieStore.get("cook_password");
	$scope.cook_mobile = $cookieStore.get("cook_mobile");

	$scope.save_update_info = function() 
	{		
		$http.post('user_update_info.php',{
		 'name':$scope.cook_name, 'password':$scope.cook_password,
		 'mobile': $scope.cook_mobile, 'email': $scope.cook_user_email})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Submited successfully");
				window.location = "user_update_info.html";
				return;				
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }
	 
	 
$scope.view_status = function(cus_id) 
	{
		window.location = "view_status.html";
		$cookieStore.put("cook_cus_id",cus_id);
		return;
	}	
	
	$scope.cook_cus_id = $cookieStore.get("cook_cus_id");

	
	
});