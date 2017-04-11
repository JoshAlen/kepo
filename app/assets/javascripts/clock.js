$(document).on("turbolinks:load",function(){
	$.each($(".timer-container"), function(index,domElement){
		$(domElement).countdown({until: new Date($(domElement).data("date"))});
		if(new Date($.now()) >= new Date($(domElement).data("date"))){
			$(".timer-container").remove()
		}
	});
	
});




// $(document).on("turbolinks:load",
	
// );


// function timer(){
// 	$.each($(".timer-container"), function(index,domElement){
// 		$(domElement).countdown({until: new Date($(domElement).data("date"))});
// 	});
// }



// if(new Date($.now()) >= new Date($(domElement).data("date")))
// {
// 	$(".timer-container").remove()
// }


