$(document).ready(function(){
  		$('#signUpForm').submit(function (event) {
  			// submit되는 것을 막기
  			event.preventDefault();
  			//id, pwd 값 가져오기
  			//var grade = $("#grade").val();
  			var grade = $('input:radio[name="grades"]:checked').val();
  				
  			var _class = $("#class").val();
  			var num = $("#num").val();
  			var name = $("#name").val();
  			console.log(grade, _class, num, name);
  			// 서버로 post 방식 전송 (ajax)
  			$.post("http://httpbin.org/post",
  					{grade: grade, _class: _class, num: num, name:name, },
  					function(data) {
  						//서버로부터 응답을 받으면
  						//alert(data.form.id+'님 로그인되었습니다.');
  						var myModal= $('#myModal');
  						myModal.modal();
  						myModal.find('.modal-body').text(data.form.name+'님 회원가입되었습니다.');
  						myModal.find('.modal-title').text('회원가입을 환영합니다.');
  					});
  		});
  	});