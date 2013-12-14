<!-- Form validator helper-->
	$(document).ready(function () {

		var validation =  $("#validateLogin").validate();
		var validation =  $("#validateSignup").validate();
		var validation =  $("#validateEdits").validate();
		var validation =  $("#validPost").validate();

		// PhoneUS is not included in plugin
		/*$('#validateMe').validate({ // initialize the plugin
			rules: {
				phone_number: {
					required: true,
					phoneUS: true
				}			
			},
		});*/
	
	});
