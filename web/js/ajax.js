$(function(){ 
	
	$('#where').click(function(){
		search();
	});

	$("#what").keypress(function(e){
	    if(e.which == 13) {
	        search();
	    }
	});

	var search = function(){
        $.ajax({
            data:  'data='+$('#what').val(),
            url:   '/reserva/ajax/search/_'+$("#where").attr('tag'),
            type:  'post',
            beforeSend: function(){

            },
            success:  function(response){
                    $("#resultado").html(response);
            }
    	});
	}

});



