<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Main Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    
    
    <script src="../js/stMenuSelect.js"> </script>
    <link rel="stylesheet" type="text/css" href="../css/seContainer.css" media="screen" />

</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	  <a class="navbar-brand" href="home.html">Nice Blog</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <%@ include file="menu.jsp" %>
	    <form class="form-inline my-2 my-lg-0" id="loginForm">
	      <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" id="id" required>
	      <input class="form-control mr-sm-2" type="password" placeholder="Password" aria-label="Password" id="password" required>
	      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Login</button>
	    </form>
	  </div>
	</nav>
	 
	 <div class="container">
	    <h1>Welcome!</h1><br>
	    <p>!!블로그에 방문하신 것을 환영합니다.</p>
    </div>
    
    <!-- Modal -->
    <%@ include file= "modal.jsp" %>
    <%@ include file= "footer.jsp" %>
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
  	<script src="../js/stLogin.js"> </script>
	
</body>

</html>