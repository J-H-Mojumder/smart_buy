
$(document).ready(function(){
/*---------------- Auto click to contact---------------*/
	$('.nav_contact').click(function(e){
		e.preventDefault();
		$('#v-pills-contact-tab').click();
		});
	$('.nav_about_us').click(function(e){
		e.preventDefault();
		$('#v-pills-about-tab').click();
		});
/*----------------Side bar Auto cancel---------------*/
	$(".var-nab-list").click(function(){
			$("#cancel").click();
			});
			
/*-----------------main section-- list start-------------------*/
		var coles_item_number = $(".shop_coles_product_items div").length;
		var coles_purchased_number = $(".shop_coles_purchased_items div").length;
		var coles_product_items = $('.shop_coles_product_items');
		var coles_purchased_items = $('.shop_coles_purchased_items');
	$(coles_product_items).on('click','input[type="checkbox"]', function(){
		$('.shop_coles_product_items div input[type="checkbox"]:checked').parent('div').prependTo(coles_purchased_items);
			coles_item_number--;
			coles_purchased_number++;
		if(coles_item_number == 0)
		{
			$('.coles_product_title').fadeOut(2000);
			}
		else if(coles_purchased_number == 1)
		{
			$('.coles_purchased_title').fadeIn(2000);
			}
		});
	$(coles_purchased_items).on('click','input[type="checkbox"]', function(){
		$('.shop_coles_purchased_items div input:checkbox:not(:checked)').parent('div').prependTo(coles_product_items);
		coles_item_number++;
		coles_purchased_number--;
		if(coles_item_number == 1)
		{
			$('.coles_product_title').fadeIn(2000);
			}
		else if(coles_purchased_number == 0)
		{
			$('.coles_purchased_title').fadeOut(2000);
			}
		});

		var woolworths_item_number = $(".shop_woolworths_product_items div").length;
		var woolworths_purchased_number = $(".shop_woolworths_purchased_items div").length;
		var woolworths_product_items = $('.shop_woolworths_product_items');
		var woolworths_purchased_items = $('.shop_woolworths_purchased_items');
	$(woolworths_product_items).on('click','input[type="checkbox"]', function(){
		$('.shop_woolworths_product_items div input[type="checkbox"]:checked').parent('div').prependTo(woolworths_purchased_items);
		woolworths_item_number--;
		woolworths_purchased_number++;
		if(woolworths_item_number == 0)
		{
			$('.woolworths_product_title').fadeOut(2000);
			}
		else if(woolworths_purchased_number == 1)
		{
			$('.woolworths_purchased_title').fadeIn(2000);
			}
		});
	$(woolworths_purchased_items).on('click','input[type="checkbox"]', function(){
		$('.shop_woolworths_purchased_items div input:checkbox:not(:checked)').parent('div').prependTo(woolworths_product_items);
		woolworths_item_number++;
		woolworths_purchased_number--;
		if(woolworths_item_number == 1)
		{
			$('.woolworths_product_title').fadeIn(2000);
			}
		else if(woolworths_purchased_number == 0)
		{
			$('.woolworths_purchased_title').fadeOut(2000);
			}
		});
		
		var aldi_item_number = $(".shop_aldi_product_items div").length;
		var aldi_purchased_number = $(".shop_aldi_purchased_items div").length;
		var aldi_product_items = $('.shop_aldi_product_items');
		var aldi_purchased_items = $('.shop_aldi_purchased_items');
	$(aldi_product_items).on('click','input[type="checkbox"]', function(){
		$('.shop_aldi_product_items div input[type="checkbox"]:checked').parent('div').prependTo(aldi_purchased_items);
		aldi_item_number--;
		aldi_purchased_number++;
		if(aldi_item_number == 0)
		{
			$('.aldi_product_title').fadeOut(2000);
			}
		else if(aldi_purchased_number == 1)
		{
			$('.aldi_purchased_title').fadeIn(2000);
			}
		});
	$(aldi_purchased_items).on('click','input[type="checkbox"]', function(){
		$('.shop_aldi_purchased_items div input:checkbox:not(:checked)').parent('div').prependTo(aldi_product_items);
		aldi_item_number++;
		aldi_purchased_number--;
		if(aldi_item_number == 1)
		{
			$('.aldi_product_title').fadeIn(2000);
			}
		else if(aldi_purchased_number == 0)
		{
			$('.aldi_purchased_title').fadeOut(2000);
			}
		});
		
		
	$('.shop_coles_product_items').on('click','.remove_field',function(e){
		e.preventDefault();
		$(this).parent('div').remove();
		coles_item_number--;
		if(coles_item_number == 0)
		{
			$('.coles_product_title').fadeOut(2000);
			}
		});
	$('.shop_woolworths_product_items').on('click','.remove_field',function(e){
		e.preventDefault();
		$(this).parent('div').remove();
		woolworths_item_number--;
		if(woolworths_item_number == 0)
		{
			$('.woolworths_product_title').fadeOut(2000);
			}
		});
	$('.shop_aldi_product_items').on('click','.remove_field',function(e){
		e.preventDefault();
		$(this).parent('div').remove();
		aldi_item_number--;
		if(aldi_item_number == 0)
		{
			$('.aldi_product_title').fadeOut(2000);
			}
		});
		
		
	$('.shop_coles_purchased_items').on('click','.remove_field',function(e){
		e.preventDefault();
		$(this).parent('div').remove();
		coles_purchased_number--;
		if(coles_purchased_number == 0)
		{
			$('.coles_purchased_title').fadeOut(2000);
			}
		});
	$('.shop_woolworths_purchased_items').on('click','.remove_field',function(e){
		e.preventDefault();
		$(this).parent('div').remove();
		woolworths_purchased_number--;
		if(woolworths_purchased_number == 0)
		{
			$('.woolworths_purchased_title').fadeOut(2000);
			}
		});
	$('.shop_aldi_purchased_items').on('click','.remove_field',function(e){
		e.preventDefault();
		$(this).parent('div').remove();
		aldi_purchased_number--;
		if(aldi_purchased_number == 0)
		{
			$('.aldi_purchased_title').fadeOut(2000);
			}
		});
/*-----------------main section-- list end-------------------*/
			
/*----------------main section--- Create list start---------------*/		
		var max_fields = 100;
		var wrapper = $(".product_list_items");
		var add_button = $(".add_list_button");
		var x = 1;
		
		$(add_button).click(function(e){
			e.preventDefault();
			if(x<max_fields){
				x++;
				$(wrapper).prepend('<div><input type="checkbox"><input type="text" class="input_items"><button class="remove_field btn btn-outline-danger btn-sm">Remove</button></div>');
				}
			});
			
			
			var result=$('input[type="checkbox"]');
		$(wrapper).on("click",result,function(){
				$('.product_list_items div input[type="checkbox"]:checked').parent('div').prependTo('.purchased_list_items');
				x--;
			});
		$('.purchased_list_items').on('click',result, function(){
				$(".purchased_list_items div input:checkbox:not(:checked)").parent('div').prependTo(wrapper);
				x++;
				});
				
				
		$(wrapper).on("click",".remove_field",function(e){
			e.preventDefault();
			$(this).parent('div').remove();
			x--;
			});	
		$('.purchased_list_items').on("click",".remove_field",function(e){
			e.preventDefault();
			$(this).parent('div').remove();
			x--;
			});
/*----------------main section--- Create list end---------------*/

/*-----------------main section-- Reminder start-------------------*/
	$('.date_Picker').datetimepicker({
		timepicker : false,
		datepicker : true,
		format : 'Y-m-d',
		value : '2020-06-08',
		yearStart : 2020,
		theme: 'dark'
		});
	$('.time_Picker').datetimepicker({
		timepicker : true,
		datepicker : false,
		format : 'H:i A',
		value : '09:45',
		hours12 : false,
		step : 5,
		theme: 'dark'
		});
/*-----------------main section-- Reminder end-------------------*/

/*-----------------main section-- Archive start-------------------*/
	$('.btn_delete').on('click',function(){
		var archive_saved_list=$('.archive_design ul li input[type="checkbox"]');
		var selected_save_list = $('.archive_design ul li input[type="checkbox"]:checked');
			if($(archive_saved_list).is(':checked'))
			{
				$(selected_save_list).parent('li').remove();
				}
		});
/*-----------------main section-- Archive end-------------------*/

	});  
