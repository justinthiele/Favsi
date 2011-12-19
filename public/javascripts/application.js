function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide(400);
}

function add_fields(link, association, body) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(body.replace(regexp, new_id));
  $(".item_options:last").hide();
}



jQuery(function () {
	
	// tipsy on the link & remove icons
	$('span.options-icon').tipsy({live: true, gravity: 'w', fade: true});
	
	// tipsy on the link field
	$('label#link.input').tipsy({live: true, gravity: 'w', fade: true});
	
	// tipsy on the Edit Profile fields
	$('label#edit-profile.input').tipsy({gravity: 'w', fade: true});
	
	
	//Hide the description on load
	$(".description_field").hide(); 

	//toggle the item_options open & closed
	$(".add_description").live("click", function(e) {
		$(this).next(".description_field").toggle(800);
		return false; //Prevent the browser jump to the link anchor
	});
	
	//Hide the form on the show page on load
	$(".new_list_show_page").hide(); 

	//toggle the form on the show page open & closed
	$("#answer_list").live("click", function(e) {
		$(this).next(".new_list_show_page").toggle(1000);
		return false; //Prevent the browser jump to the link anchor
	});

	//Hide the item options on load
	$(".item_options").hide(); 

	//toggle the item_options open & closed
	$(".options-icon").live("click", function(e) {
		$(this).siblings(".item_options").toggle(400);
		return false; //Prevent the browser jump to the link anchor
	});

	
	//draggy & droppy item sorting
	$('ol#items').sortable({handle:".handle"});
	
	//cursor defaults to first field
	$('input[type="text"]:first').focus();
	
});