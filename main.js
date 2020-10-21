$(document).ready(function(){
//-------------------------------------live search-------------------------------------------
	
	let data_row = []; //0 = id ----1 = amount ---- 2 = name

	$("#txtSearch").keyup(function(){
		$("#result").show();
		var value = $(this).val();
		$.ajax({
			type:'POST',
			url:'fetch.php',
			data: 'q='+value,
			success:function(data)
			{
				$("#result").fadeIn();
				$("#result").html(data);//list(data)
			}
		});
	});
//-------------------------------------updating session and data_row------------------------------------
	$.ajax({ 
		    type: 'POST', 
		    url: 'set_session_list.php', 
		    data: { data : data_row}, 
		    success: function(data)
		    { 
		    	if (data_row.length == 0 )
		    	{
		    		var res = $.parseJSON(data);
		    		data_row = res;
		    		console.table(data_row);
		    	}
		    } 
		});
	//-------------------------------------click on search result----------------------------------------
	$("#btnSearch").click(function(event){
		event.preventDefault();
		$("#result").show();
		var value = document.getElementById("txtSearch").value;;
		$.ajax({
			type:'POST',
			url:'fetch.php',
			data: 'q='+value,
			success:function(data)
			{
				$("#result").fadeIn();
				$("#result").html(data);//list(data)
			}
		});
	});
//-------------------------------------click on search result-------------------------------------------
	$(document).on('click','.list',function(){
		data = $(this).text();
		//console.log(data)
		tempData = data.split(" ");
	 	//console.log(parseInt(tempData[(tempData.length)-2]));
	 	//console.log(tempData[(tempData.length)-1]);
	 	tempData1 = data.split("$");
	 	//console.log(tempData1[0]);

		$('#result').fadeOut();

		$.post(
			'product_add.php',{
				'id': parseInt(tempData[(tempData.length)-2]),
				'unit':tempData[(tempData.length)-1],
				'name':tempData1[0]
			},
			function(data){
				//console.log(data);
				$('#product_add').empty().append(data);
			});//post
		return false;
	});
//-------------------------------------click on add to list-------------------------------------------
	$(document).on('click','#add_to_list',function(){
		var count = 1;
		var flag = 0;
		amount = document.getElementById("add_to_list_amount").value;
		id = document.getElementById("add_to_list_id").innerText;
		name = document.getElementById("add_to_list_name").innerText;
		unit = document.getElementById("add_to_list_unit").value;

		//console.log(parseFloat(data_row[i][1]));
		for (var i = 0; i <= data_row.length - 1; i++)
		{
			if (data_row[i][0] == id && data_row[i][1] != "") 
			{
				var str = "#"+id;
				$(str).remove();
				//console.log(parseFloat(data_row[i][1]));
				alert("You have already added "+name+" to list!!");
				flag = 1;
				break;
			}
		}
		if (amount == "") 
		{
			alert("Enter amount!!");
		}
		else
		{
			if (flag == 0)
			{
				$('#product_add').empty();
				//console.log("Deleted");

				//'#product_list'
				data_row.push([id,amount,name]);

				$.ajax({ 
				    type: 'POST', 
				    url: 'set_session_list.php', 
				    data: { data : data_row}, 
				    success: function(data)
				    { 
				    	console.log(data); 
				    } 
				});

				$.ajax({ 
				    type: 'POST', 
				    url: 'product_list.php', 
				    data: { data : data_row}, 
				    success: function(data)
				    { 
				    	$('#product_list_row').empty().append(data); 
				    } 
				});

				$.ajax({ 
				    type: 'POST', 
				    url: 'three_shops_total.php', 
				    data: { data : data_row}, 
				    success: function(data)
				    {
						$("#Three_shops").html(data);//list(data) 
				    } 
				});


//-------------------------------------shop-wise product list-------------------------------------------		
				$.ajax({ 
				    type: 'POST', 
				    url: 'home_shopwise_list_aldi.php', 
				    data: { data : data_row}, 
				    success: function(data)
				    { 
				        //$("#three_shops_total").fadeIn();
						$("#product_list_aldi").html(data);//list(data) 
				    } 
				});
				$.ajax({ 
				    type: 'POST', 
				    url: 'home_shopwise_list_woolworths.php', 
				    data: { data : data_row}, 
				    success: function(data)
				    { 
				        //$("#three_shops_total").fadeIn();
						$("#product_list_woolworths").html(data);//list(data) 
				    } 
				});
				$.ajax({ 
				    type: 'POST', 
				    url: 'home_shopwise_list_coles.php', 
				    data: { data : data_row}, 
				    success: function(data)
				    { 
				        //$("#three_shops_total").fadeIn();
						$("#product_list_coles").html(data);//list(data) 
				    } 
				});

				$.ajax({ 
				    type: 'POST', 
				    url: 'compare.php', 
				    data: { data : data_row}, 
				    success: function(data)
				    { 
						$("#suggestion").html(data); 
				    }
				});
			}
		}
		return false;
	});
//-------------------------------------click on edit button-------------------------------------------
	$(document).on('click','.btn-outline-success',function(){
		var id = $(this).data('id');
		var unit = $(this).data('unit');
		var string = "product_list_name"+id;
		console.log(unit);
		console.log(string);
		var name = document.getElementById(string).innerText;
		console.log(name);

		var string = "#row"+id;
		$(string).remove();
		$.post(
			'product_edit.php',{
				'id': parseInt(id),
				'unit': unit,
				'name':name
			},
			function(data){
				//console.log(data);
				$('#product_add').empty().append(data);
			});//post
		for (var i = 0; i <= data_row.length - 1; i++) 
		{
			if (data_row[i][0] == id)
			{
				data_row[i][1] = "";
			}
		}
		$.ajax({ 
		    type: 'POST', 
		    url: 'set_session_list.php', 
		    data: { data : data_row}, 
		    success: function(data)
		    { 
		    	console.log(data); 
		    } 
		});
//-------------------------------------shop-wise product list------------------------------------------
		$.ajax({ 
		    type: 'POST', 
		    url: 'home_shopwise_list_aldi.php', 
		    data: { data : data_row}, 
		    success: function(data)
		    { 
		        //$("#three_shops_total").fadeIn();
				$("#product_list_aldi").html(data);//list(data) 
		    } 
		});
		$.ajax({ 
		    type: 'POST', 
		    url: 'home_shopwise_list_woolworths.php', 
		    data: { data : data_row}, 
		    success: function(data)
		    { 
		        //$("#three_shops_total").fadeIn();
				$("#product_list_woolworths").html(data);//list(data) 
		    } 
		});
		$.ajax({ 
		    type: 'POST', 
		    url: 'home_shopwise_list_coles.php', 
		    data: { data : data_row}, 
		    success: function(data)
		    { 
		        //$("#three_shops_total").fadeIn();
				$("#product_list_coles").html(data);//list(data) 
		    } 
		});
		return false;
	});

//-------------------------------------click on remove button------------------------------------------
	$(document).on('click','.btn-outline-danger',function(){
		var id = $(this).data('id');
		for (var i = 0; i <= data_row.length - 1; i++) 
		{
			if (data_row[i][0] == id)
			{
				warning_name = data_row[i][2];
				break;
			}
		}
		if (confirm("Are you sure you want do delete '"+warning_name+"' ?")) 
		{
			for (var i = 0; i <= data_row.length - 1; i++) 
			{
				if (data_row[i][0] == id)
				{
					data_row[i][1] = "";
				}
			}
			$.ajax({ 
			    type: 'POST', 
			    url: 'set_session_list.php', 
			    data: { data : data_row}, 
			    success: function(data)
			    { 
			    	console.log(data); 
			    } 
			});
			var string = "#row"+id;
			$(string).remove();
//-------------------------------------shop-wise product list-------------------------------------------
			$.ajax({ 
			    type: 'POST', 
			    url: 'home_shopwise_list_aldi.php', 
			    data: { data : data_row}, 
			    success: function(data)
			    { 
			        //$("#three_shops_total").fadeIn();
					$("#product_list_aldi").html(data);//list(data) 
			    } 
			});
			$.ajax({ 
			    type: 'POST', 
			    url: 'home_shopwise_list_woolworths.php', 
			    data: { data : data_row}, 
			    success: function(data)
			    { 
			        //$("#three_shops_total").fadeIn();
					$("#product_list_woolworths").html(data);//list(data) 
			    } 
			});
			$.ajax({ 
			    type: 'POST', 
			    url: 'home_shopwise_list_coles.php', 
			    data: { data : data_row}, 
			    success: function(data)
			    { 
			        //$("#three_shops_total").fadeIn();
					$("#product_list_coles").html(data);//list(data) 
			    } 
			});
		}
		$.ajax({ 
		    type: 'POST', 
		    url: 'three_shops_total.php', 
		    data: { data : data_row}, 
		    success: function(data)
		    { 
		        //$("#three_shops_total").fadeIn();
				$("#Three_shops").html(data);//list(data) 
		    } 
		});
	});

	$(document).on('click','#calculate',function(){		
		//var rows = document.getElementsByClassName("rows");
		/*$.ajax({ 
		    type: 'POST', 
		    url: 'set_session_list.php', 
		    data: { data : data_row}, 
		    success: function(data)
		    { 
		    	//console.log(data);
		    	//console.log(data_row.length)
		    	if (data_row.length == 0)
		    	{
		    		var res = $.parseJSON(data);
		    		data_row = res;
		    		console.table(data_row);
		    	}
		    } 
		});
		$.ajax({ 
		    type: 'POST', 
		    url: 'product_list.php', 
		    data: { data : data_row}, 
		    success: function(data)
		    { 
		    	$('#product_list_row').empty().append(data); 
		    } 
		});

		$.ajax({ 
		    type: 'POST', 
		    url: 'three_shops_total.php', 
		    data: { data : data_row}, 
		    success: function(data)
		    { 
		        //$("#three_shops_total").fadeIn();
				$("#Three_shops").html(data);//list(data) 
		    } 
		});

		$.ajax({ 
		    type: 'POST', 
		    url: 'home_shopwise_list_aldi.php', 
		    data: { data : data_row}, 
		    success: function(data)
		    { 
		        //$("#three_shops_total").fadeIn();
				$("#product_list_aldi").html(data);//list(data) 
		    } 
		});
		$.ajax({ 
		    type: 'POST', 
		    url: 'home_shopwise_list_woolworths.php', 
		    data: { data : data_row}, 
		    success: function(data)
		    { 
		        //$("#three_shops_total").fadeIn();
				$("#product_list_woolworths").html(data);//list(data) 
		    } 
		});
		$.ajax({ 
		    type: 'POST', 
		    url: 'home_shopwise_list_coles.php', 
		    data: { data : data_row}, 
		    success: function(data)
		    { 
		        //$("#three_shops_total").fadeIn();
				$("#product_list_coles").html(data);//list(data) 
		    } 
		});*/

		$.ajax({ 
		    type: 'POST', 
		    url: 'compare.php', 
		    data: { data : data_row}, 
		    success: function(data)
		    { 
				$("#suggestion").html(data); 
		    }
		}); 

	});

	$(document).on('click','#btnSave',function(){
		$.post(
			'save_list.php',
			{
				'check': '1'
			},
			function(data){
			$('#msg').empty().append(data);
		});//post

		return false;
	});

	$(document).on('click','#btnAddToMyList',function(){
		// $.ajax({ 
		//     type: 'POST', 
		//     url: 'home_shopwise_list_coles.php', 
		//     data: { data : data_row}, 
		//     success: function(data)
		//     { 
		//         //$("#three_shops_total").fadeIn();
		// 		$("#product_list_coles").html(data);//list(data) 
		//     } 
		// });
		
		return false;
	});
	$(document).on('click','#btnShare',function(){
		// $.ajax({ 
		//     type: 'POST', 
		//     url: 'home_shopwise_list_coles.php', 
		//     data: { data : data_row}, 
		//     success: function(data)
		//     { 
		//         //$("#three_shops_total").fadeIn();
		// 		$("#product_list_coles").html(data);//list(data) 
		//     } 
		// });
		
		return false;
	});
	$(document).on('click','#btnSignIn',function(){
		email = document.getElementById("sign_in_email").value;
		pass = document.getElementById("sign_in_pass").value;
		$.post(
			'sign_in.php',
			{
				'email': email,
				'pass': pass
			},
			function(data){
			//$('#sign_in_msg').empty().append(data);
			//alert(data);
			if (data == "Credential did not match!!") 
			{
				$('#sign_in_msg').empty().append(data);
			}
			else
			{
				location.reload();
			}
		});//post

		return false;
	});
	
	$(document).on('click','#logout',function(){
		$.post(
			'logout.php',
			{},
			function(data){
			location.reload();
		});//post

		return false;
	});
	$(document).on('click','#btnSignUp',function(){
		var name = document.getElementById("sign_up_full_name").value;
		var email = document.getElementById("sign_up_email").value;
		var contact = document.getElementById("sign_up_contact_number").value;
		var address = document.getElementById("sign_up_address").value;
		var pass = document.getElementById("sign_up_pass").value;
		$.post(
			'sign_up.php',
			{
				'name': name,
				'email': email,
				'contact': contact,
				'address': address,
				'pass': pass
			},
			function(data){
			if (data == "reload") 
			{	
				//location.reload();
				console.log("OK");
				$.post(
					'sign_in.php',
					{
						'email': email,
						'pass': pass
					},
					function(data)
					{
						if (data == "Credential did not match!!") 
						{
							$('#sign_in_msg').empty().append(data);
						}
						else
						{
							location.reload();
						}
					});
				
			}
			else
			{
				$('#sign_up_msg').empty().append(data);
			}
		});//post
	return false;
	});
});