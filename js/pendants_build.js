var options = {
    type: 'POST',
    url: '/pendants/p_build/',
    beforeSubmit: function() {
        $('#results').html("Pendants!!!...");
    },
    success: function(response) {   
        $('#results').html(response);
    } 
}; 

$('form').ajaxForm(options);