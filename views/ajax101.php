<!DOCTYPE html>

<html>

<head>

</head>

<body>

    <br><br>

    <input type='text' id='name' name='name'>
    <div id='response'></div>
    <button>Submit</button>


	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

    <script>

        $('button').click(function() {

    		$.ajax({
				type:'POST',
				url: '/stock/p_process_stock',
				// success option will automatically feed to the function attached to success what the results are.
				success: function(results) { // p_process_stock will come back in the response variable
					//console.log(response);
                    $(response).html(results); //output to console, i'll want database or soemthening
                },
                data: {
                    name: $('#name').val(), // grab this name value pair from the form
                }    		
            });

    	});

    </script>

    

</body>
</html>