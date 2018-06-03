(function($){
    
	$('.datepicker').datepicker();

}(jQuery));


$.ajax({
	url : 'PublicData.do',
	type : 'get',
	dataType : 'json',
	success : function(msg) {
		console.log(msg.response.body.items.item);
		var myItem = msg.response.body.items.item;

		for (var i = 0; myItem.length; i++) {
			var output = '';
			console.log(myItem.length);
			output += '<h4>' + myItem[i].mntNm + '</h4>';
			output += '<h4>' + myItem[i].subNm + '</h4>';
			document.body.innerHTML += output;
		}
	}
});

