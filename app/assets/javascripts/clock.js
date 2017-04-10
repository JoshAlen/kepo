$(document).on("turbolinks:load",function(){
	$.each($(".timer-container"), function(index,domElement){
		$(domElement).countdown({until: new Date($(domElement).data("date"))});
	});
	
});

