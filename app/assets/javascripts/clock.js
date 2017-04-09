$(document).on("turbolinks:load",function(){
	date = $(".timer-container").data("date")
	{
		$(".timer-container").countdown({until: new Date(date)})
	}
})

