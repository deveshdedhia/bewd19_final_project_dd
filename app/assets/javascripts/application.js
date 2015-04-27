// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

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


// $(function() { 
//     $("#choicelist1").hide();
// 	document.getElementById("choicelist_label1").style.display ='none'
// 	$("#survey_questions_attributes_0_question_type").change(function() { 
// 		if ($(this).val() == "text"){
// 		 	$("#choicelist1").hide();
// 			document.getElementById("choicelist_label1").style.display ='none'
// 		 }
// 		else{ 
// 			$("#choicelist1").show();
// 			document.getElementById("choicelist_label1").style.display ='inline'
// 		}
// 	}); 
// });
