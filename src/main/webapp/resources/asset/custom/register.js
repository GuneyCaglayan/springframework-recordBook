function register() {
	
	
	var param = {
		firstName : $('#firstName').val(),
		lastName : $('#lastName').val(),
		blood : $('#blood').val(),
		phoneNumber : $('#phoneNumber').val(),
		address : $('#address').val(),
	}

	var ser_data = JSON.stringify(param);

	$.ajax({
		type : "POST",
		contentType : 'application/json; charset=UTF-8',
		url : 'createUser',
		data : ser_data,
		success : function(data) {
			alert(data);
		},
		error : function(data) {
			alert("Kayıt Oluşturulamadı.");
		}
	});
}