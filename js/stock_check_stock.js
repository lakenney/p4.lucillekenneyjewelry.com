/*var options = {
    type: 'POST',
    url: '/stock/p_check_stock/',
    beforeSubmit: function() {
        $('#results').html("Hello Pendants");
    },
    success: function(response) {   
        $('#results').html('this is working!!!');
    } 
}; 

$('form').ajaxForm(options);*/

/*-------------------------------------------------------------------------------------------------
    When the refresh button is clicked, JavaScript makes a call to p_check_stock() which 
    gathers the latest details we want into an array. That array is converted into JSON 
    via PHP's json_encode() method
-------------------------------------------------------------------------------------------------*/

$('#refresh-button').click(function() {

    $.ajax({
        type: 'POST',
        url: '/stock/p_check_stock',
        success: function(response) { 

            // For debugging purposes
            //console.log(response);

            // Example response: {"post_count":"9","user_count":"13","most_recent_post":"May 23, 2012 1:14am"}

            // Parse the JSON results into an array
            //var data = $.parseJSON(response);
            var products = $.parseJSON(response);
            //console.log(products);

            $("#product_title").text("");
            $("#product_shape").text("");
            $("#product_size").text("");
            $("#product_metal").text("");
            $("#product_stock").text("");
            $("#product_price").text("");

            for (var key in products) {

                //console.log(products[key]['product_name'])
                //console.log(products[key]['shape'])
                //console.log(products[key]['size'])
                //console.log(products[key]['metal'])
                //console.log(products[key]['stock'])
                //console.log(products[key]['price'])


                /* We want this to load in a designed fashion.
                product_title = $('<h2>')..text(products[key]['product_name']);
                product_shape = $('<p>')..text(products[key]['shape']);
                ...

                // do this for all elements
                product_title.appendTo($("#product_name"));
                product_shape.appendTo($("#shape"));*/
                
                //$(products[key]['product_name'])
                $("<p>" + products[key]['product_name'] + "</p>").appendTo($("#product_title"));
                $("<p>" + products[key]['shape'] + "</p>").appendTo($("#product_shape"));
                $("<p>" + products[key]['size'] + "</p>").appendTo($("#product_size"));
                $("<p>" + products[key]['metal'] + "</p>").appendTo($("#product_metal"));
                $("<p>" + products[key]['stock'] + "</p>").appendTo($("#product_stock"));
                $("<p>" + products[key]['price'] + "</p>").appendTo($("#product_price"));
                //console.log.(product_name);

                /* This also works */
                /*product_list = $('<ul>');
                $('<li>',{class:'pendant'}).text(products[key]['product_name']).appendTo(product_list);

                $('<li>').text(products[key]['shape']).appendTo(product_list);

                $('<li>').text(products[key]['size']).appendTo(product_list);

                $('<li>').text(products[key]['metal']).appendTo(product_list);

                $('<li>').text(products[key]['stock']).appendTo(product_list);

                $('<li>').text("$" + products[key]['price']).appendTo(product_list);

                product_list.appendTo($("#products"));*/

            }

            // Inject the data into the page
            //$('#product_name').html(products['product_name']);

           /* $('#product_count').html(data['product_count']);
            $('#post_count').html(data['post_count']);
            $('#user_count').html(data['user_count']);
            $('#most_recent_post').html(data['most_recent_post']);*/

        }
    });





});
