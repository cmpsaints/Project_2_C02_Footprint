$(document).ready(function() {
	//validates form before sending it, by attaching an event handler to the form submission, like so...
	$("#contact form").on("submit", function(e) {
		//.preventDefault() a method that prevents the default action (in this case `e`) from being triggered,
		//which is the actual processing of the form submission in this case 
		e.preventDefault();
		
		var $form = $(e.currentTarget),
			$email = $form.find("#contact-email"),
			$button = $form.find("button[type=submit]");
		
		if($email.val().indexOf("@") == -1) {
            // vaca = $email.closest("form-group")
            $email.closest(".form-group").addClass("has-error");
        } else {
            $form.find(".form-group").addClass("has-success").removeClass("has-error");
            $button.attr("disabled", "disabled");
			
			// one way --
			// $button.after("<span>Message sent. We will contact you soon.</span>");
			
			// another way --
			var $newSpan = $("<span>");
			$newSpan.addClass("message-submitted");
			$newSpan.text("Message sent. We will contact you soon.");
			$button.after($newSpan);
			
			// wrong way --
			// var $submitConfirm = $button.after("<span>");
			// $submitConfirm.text("Message sent. We will contact you soon");
        }
	});
	
	
	$("#log-in-btn").on("click", function(e) {
		$(e.currentTarget).closest("ul").hide();
		$("form#log-in").fadeIn("fast");
	});
	
	$("#sign-up-btn").on("click", function(e) {
		$(e.currentTarget).closest("ul").hide();
		$("form#sign-up").fadeIn("fast");
	});
});