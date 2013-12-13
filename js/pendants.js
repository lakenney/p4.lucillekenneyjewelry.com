var options = {
    type: 'POST',
    url: '/pendants/p_build/',
    beforeSubmit: function() {
        $('#results').html("Adding...");
    },
    success: function(response) {   
        $('#results').html(response);
    } 
}; 

$('form').ajaxForm(options);