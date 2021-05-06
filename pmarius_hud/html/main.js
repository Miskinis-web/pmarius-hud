
$(function(){
	window.addEventListener("message", function(event){
		if (event.data.pauseMenu == false) {
			$("#heart").val(event.data.health);
			$("#hunger").val(event.data.food);
			$("#vanduo").val(event.data.thirst);
			$("#armour").val(event.data.armour);
        	}
    	})
});