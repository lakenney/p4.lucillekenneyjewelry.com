/*-------------------------------------------------------------------------------------------------
    When the Buy Now button is clicked, JavaScript makes a call to p_check_status() which 
    gathers the latest details we want into an array. That array is converted into JSON 
    via PHP's json_encode() method
-------------------------------------------------------------------------------------------------*/

    $('buyNow').click(function() {

		$.ajax({
			type:'POST',
			url: 'https://www.paypal.com/cgi-bin/webscr',
			// success option will automatically feed to the function attached to success what the results are.
			// Get selected item from paypal form
			success: function(product) { // p_check_status will come back in the response variable
				//console.log(results);
				// Get results and check it against database
                $(response).html(product); //output to console, i'll want database or something
            },
            data: {
                item_name: $('#paypalShapeSizeMetal').val(), // grab this name value pair from the form
            }    		
        });

	});

