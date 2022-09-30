
try{
	$('html').click(function() {$('#settings-box').removeClass("open"); });
	$('.settings-btn, #settings-box').click(function(e){ e.stopPropagation(); });
}catch(exception){
	console.log("exception: "+exception);
}

$(document).ready(function(){	
	$('#settings-btn').click(function(){$('#settings-box').addClass("open"); } ); 
	$('#settings-close').click(function(){$('#settings-box').removeClass("open");} ); 
});


$('#right-sidebar-fixed').change(function() {
	$("#page-wrapper").toggleClass("sidebar-content");
	return;
});

$('#white-top-header').change(function() {
	$("nav.navbar.navbar-static-top").toggleClass("white-bg");
	return;
});

$(document).ready(function(){
	var numbFriend = $("#p_p_id_1_WAR_chatportlet_ .chat-bar .buddy-list .trigger-name").html();
	if(numbFriend != undefined)
	{
		var numbInt= numbFriend.replace( /^\D+/g, '');
		numbInt= parseInt(numbInt);
		if(numbInt >=0 ){
			numbInt = "<span class='badge badge-warning pull-right'>"+ numbInt +"</span>";
			$("#p_p_id_1_WAR_chatportlet_ .chat-bar .buddy-list .trigger-name").html(numbInt);
		}
	}
});
