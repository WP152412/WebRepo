<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Sign In</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="/WebClass/css/signin.css">
</head>
<body>
<div class="container">

  <form id="signinForm" class="form-signin" action="" method="post">
    <h2 class="form-signin-heading">Please sign in</h2>
    
    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" name="id" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
    
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" name="pwd" id="inputPassword" class="form-control" placeholder="Password" required>

    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
  </form>

</div>

<div class="modal" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Sign Up Error</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>회원 가입 시 오류가 발생하였습니다.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<script> 
	$(document).ready(function() {
		$("#signinForm").submit(function(event) {
			event.preventDefault();
			console.log('start');
			var id = $("#inputEmail").val();
			var pwd = $("#inputPassword").val();
			
			console.log(id, pwd);
			$.post("/WebClass/bloglogin", 
				{
					"id" : id,
					"pwd" : pwd
				}, function(data) {
					console.log(id);
					if(data.msg == 'success') {
						location.href = "home.jsp";
		 			} else {
						var myModal = $('#myModal');
		 				myModal.modal();
						myModal.find('.modal-body').text('회원가입에 실패하였습니다.');
					}
				}
			);
		});
	});
</script>

</body>
</html>