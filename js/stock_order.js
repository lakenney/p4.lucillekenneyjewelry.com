/*-------------------------------------------------------------------------------------------------
    When the Buy Now button is clicked, JavaScript makes a call to p_check_status() which 
    gathers the latest details we want into an array. That array is converted into JSON 
    via PHP's json_encode() method
-------------------------------------------------------------------------------------------------*/

    $('#buy-now').click(function() {
		event.preventDefault();

    	//var $form          = $(this),
		$.ajax({
			type:'POST',
			url: '/stock/p_order',
			data: products:5,quantity:"2"
			{
				// send data to php using json format
				paypalPrice: $('#paypalPrice').val(),
				paypalShapeSizeMetal: $('#paypalShapeSizeMetal').val(),
			},


			//$form.serialize(),
			//console.log( $( this ).serialize() );


			// success option will automatically feed to the function attached to success what the results are.
			// Get selected item from paypal form
			//success: function(response) { // p_check_status will come back in the response variable
				//console.log(response);
				// Get results and check it against database
                //$(response).html(data); //output to console, i'll want database or something
            }
            /*data: {
                item_name: $('#paypalShapeSizeMetal').val(), // grab this name value pair from the form
            }  */  		
        }); 
	});

