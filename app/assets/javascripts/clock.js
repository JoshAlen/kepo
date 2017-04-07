$(document).on("turbolinks:load",function(){
	date = $("#timer-container").data("date")
	if ($("#no-image").data("image") != "none") {
		$("#timer-container").countdown({until: new Date(date)})
	}
})

