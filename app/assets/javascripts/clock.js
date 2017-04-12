// Original Code
// $(document).on("turbolinks:load",function(){
// 	$.each($(".timer-container"), function(index,domElement){
// 		$(domElement).countdown({until: new Date($(domElement).data("date"))});
// 	});
// });

$(document).on("turbolinks:load", function(){
	$.each($(".timer-container"), timer)
})

function timer(index, domElement){
	$(domElement).countdown({until: new Date($(domElement).data("date"))})
}

window.setInterval(function(){
	$.each($(".timer-container"), gone
		)
}, 1000);

function gone(index, domElement){
	if(new Date($.now()) >= new Date($(domElement).data("date"))) {
		$(domElement).parent().parent().hide()
	}
}





