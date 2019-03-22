$(document).ready(function() {
	
	$("#log-in-btn").on("click", function(e) {
		$(e.currentTarget).closest("ul").hide();
		$("form#log-in").fadeIn("fast");
	});
	
	$("#sign-up-btn").on("click", function(e) {
		$(e.currentTarget).closest("ul").hide();
		$("form#sign-up").fadeIn("fast");
	});
});