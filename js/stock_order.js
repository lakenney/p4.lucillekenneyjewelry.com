/*-------------------------------------------------------------------------------------------------
    When the Buy Now button is clicked, JavaScript makes a call to p_check_status() which 
    gathers the latest details we want into an array. That array is converted into JSON 
    via PHP's json_encode() method ... 
    see: http://stackoverflow.com/questions/5004233/jquery-ajax-post-example-with-php
-------------------------------------------------------------------------------------------------*/
$('#buy-now').click(function() {
	//JSON Array. You can create this array any way you like. 
	//Perhaps by grabbing the user's choice via JQuery etc..
	var formData = {product:$('#paypalShapeSizeMetal').val()}; 
	 
	$.ajax({
		url: '/stock/p_order',   //JSON to waiting PHP controller
	    type: "POST",
	    data : formData,
	    success: function(data, textStatus, jqXHR)
	    {
	    	//console.log("Hooray, it worked!");
	        //data - response from server/ignore for right now. 
	        //This is where AJAX drops you when it is complete. 
	        //I tend to Redirect the user at this point, or do some cleanup..
	        //such as clear the forms etc..

	        //I'll want to redirect to paypal form
	    },
	    error: function (jqXHR, textStatus, errorThrown)
	    {
			console.log("No go :(");

	    }
	});
});

/*// variable to hold request
var request;
// bind to the submit event of our form
$('#buy-now').click(function(event){
    // abort any pending request
    if (request) {
        request.abort();
    }
    // setup some local variables
    var $form = $(this);
    // let's select and cache all the fields
    var $inputs = $form.find("input, select, button, textarea");
    // serialize the data in the form
    var serializedData = $form.serialize();

    // let's disable the inputs for the duration of the ajax request
    $inputs.prop("disabled", true);

    // fire off the request to /form.php
    request = $.ajax({
		url: '/stock/p_order',
        type: "post",
        data: serializedData
    });

    console.log(request);
    // callback handler that will be called on success
    request.done(function (response, textStatus, jqXHR){
        // log a message to the console
        console.log("Hooray, it worked!");
    });

    // callback handler that will be called on failure
    request.fail(function (jqXHR, textStatus, errorThrown){
        // log the error to the console
        console.error(
            "The following error occured: "+
            textStatus, errorThrown
        );
    });

    // callback handler that will be called regardless
    // if the request failed or succeeded
    request.always(function () {
        // reenable the inputs
        $inputs.prop("disabled", false);
    });

    // prevent default posting of form
    event.preventDefault();
});*/






   /* $('#buy-now').click(function() {

    	//var $form          = $(this);
		$.ajax({
			type:'POST',
			url: '/stock/p_order',
			data: {
				// send data using json format
				product:$('#paypalPrice').val(),quantity:"2"
			},*/

			/*{
				// send data to php using json format
				product
				:"5",quantity:"2"
				paypalPrice: $('#paypalPrice').val(),
				paypalShapeSizeMetal: $('#paypalShapeSizeMetal').val(),
			},*/

			//$form.serialize(),

			// success option will automatically feed to the function attached to success what the results are.
			// Get selected item from paypal form
			/*success: function(response) { // p_check_status will come back in the response variable
				console.log(response);
				// Get results and check it against database
                //$(response).html(data); //output to console, i'll want database or something
            }*/
            /*data: {
                item_name: $('#paypalShapeSizeMetal').val(), // grab this name value pair from the form
            }  */  		
        /*}); 
	});*/

