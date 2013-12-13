var options = {
    type: 'POST',
    url: '/pendants/p_build/',
    beforeSubmit: function() {
        $('#results').html("Hello Pendants");
    },
    success: function(response) {   
        $('#results').html('this is working!!!');
    } 
}; 

$('form').ajaxForm(options);