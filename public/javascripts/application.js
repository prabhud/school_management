// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery.ajaxSetup({
  'beforeSend': function(xhr) { xhr.setRequestHeader("Accept", "text/javascript") }
});

$(document).ready(function() {
    $('#user_password,#user_old_password,#user_password_confirmation,#user_session_password').bind('cut copy paste', function (e) {  
        e.preventDefault();  
        alert('You cannot ' + e.type + ' text!');
    });  

    $('input[val="name"]').alpha({allow:". "});
    $('input[val="bg"]').alpha({allow:"+- "});
  	$('input[val="phone_number"]').numeric({allow:"+-"});
    $('input[val="address"]').alphanumeric({allow:"/#-.\: "});
    
    $('input[val="allow_alphanumeric"]').alphanumeric({allow:" "});
    $('input[val="allow_alpha_only"]').alpha({allow:" "});
    $('input[val="allow_numeric_only"]').numeric();

     
    $('textarea').elastic();
   
    $("#flash_notice").fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal');
    $("#flash_error").fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal');
    $(".flash").fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal').fadeOut('fast').fadeIn('normal');
    
    $('a#close_flash').click(function(){
        $('#flash_notice').fadeOut("1000");
   	    $('#flash_error').hide('slow');
	})

    $('input[title!=""]').hint();

    $('textarea[title!=""]').hint();
	
	$(document).ajaxStart(function(){
		//$('#container').addClass("fade");
		$("#ajaxSpinnerContainer").show();
	})
	.ajaxStop(function(){
		$("#ajaxSpinnerContainer").hide();
		$('input[title!=""]').hint();
		//$('#container').removeClass("fade");
	});
    
    
    $("#search-form").bind('submit change', function() {
		$.get(this.action, $(this).serialize(),null,"script");
    	return false;
	});
	
	$('#reset_form_fields').click(function() {
		var that = $(this);
		$('form')[0].reset();
		$('input[title!=""]').hint();
		$.get(that.attr('rel'), {id: that.val()}, null, "script");
		return false;
	});
	
	$("th a, .pagination a").live("click", function() {
		$.getScript(this.href);
	    return false;
	});
	
});
