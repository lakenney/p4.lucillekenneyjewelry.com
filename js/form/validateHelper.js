<!-- Form validator helper-->
	$(document).ready(function () {

		var validation =  $("#validateLogin").validate();
		var validation =  $("#validateSignup").validate();
		var validation =  $("#validateEdits").validate();

		/*$("#add_posts_form").validate({ // initialize the plugin
			rules: {
				content: {
					required: true,
					minlength: 1
				}			
			},
		});*/

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
