$(document).ready(function(){
	$('#searchBar').keyup(function(){
		$.ajax({
			type: "POST",
			url: "getPlayer.php",
			data: 'key='+$(this).val(),
			success: function(data){
				$('#player').show();
				$('#player').html(data);
			}
		});
	});

	$('#searchBar1').keyup(function(){
		$.ajax({
			type: "POST",
			url: "getPlayer.php",
			data: 'key='+$(this).val(),
			success: function(data){
				$('#player1').show();
				$('#player1').html(data);
			}
		});
	});
});

