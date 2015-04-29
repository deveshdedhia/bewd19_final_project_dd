$(function(){ 
	$(document).foundation({
	  reveal : {
	    animation_speed: 500
	  },
	  tooltip : {
	    disable_for_touch: true
	  },
	  topbar : {
	    custom_back_text: false,
	    is_hover: false,
	    mobile_show_parent_link: true
	  }
	});
});


$(function() { 
    $("#choicelist1").hide();
	document.getElementById("choicelist_label1").style.display ='none'
	$("#survey_questions_attributes_0_question_type").change(function() { 
		if ($(this).val() == "text"){
		 	$("#choicelist1").hide();
			document.getElementById("choicelist_label1").style.display ='none'
		 }
		else{ 
			$("#choicelist1").show();
			document.getElementById("choicelist_label1").style.display ='inline'
		}
	}); 
});