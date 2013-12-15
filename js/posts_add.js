var options = {
    type: 'POST',
    url: '/posts/p_add/',
    beforeSubmit: function() {
        $('#results').html("Adding...");
    },
    // You post has been added
    success: function(response) {   
        $('#results').html(response);
    } 
}; 

$('#add_posts_form').ajaxForm(options);