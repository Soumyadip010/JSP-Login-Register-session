<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Register New User</title>
	
	<link rel="stylesheet" href="./css/register.css"/>
	
	<!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">  
    
    <script type="text/javascript">
		function validate() {
			const check=/^[A-Za-z0-9]{1,8}$/;
			const userCheck=/^.{1,30}$/;
			var password=document.getElementById("password").value;
			var username=document.getElementById("username").value;
			
			if(!password.match(check)){
				alert("Password can only be alphanumerical and max character length is 8.")
				return false;
			}
			if(!username.match(userCheck)){
				alert("Max length for username is 30.")
				return false;
			}
			return true;
		}    
    </script>  
</head>
<body>

	<!-- Background Video -->
    <video autoplay muted loop class="bg-video">
        <source src="<%=request.getContextPath()%>/resources/videoes/L2.mp4">
    </video>
    
    <!-- Overlay -->
    <div class="overlay"></div>
    
    <div class="register-container">
    	<div class="register-card">
    		<h3>Register Library User</h3>
    		<form action="registerProcess.jsp" onsubmit="return validate()" method="post">
    			<div class="entries">
    				<label class="form-label">USER ID</label>
                    <input type="number" name="userid" id="userid" placeholder="Enter a valid USERID eg:1001" required>
    			</div>
    			<div class="entries">
    				<label class="form-label">USERNAME</label>
                    <input type="text" name="username" id="username" placeholder="Enter Username" required>
    			</div>
    			<div class="entries">
    				<label class="form-label">Password</label>
                    <input type="password" name="password" id="password" placeholder="Enter password" required>
    			</div>
    			
    			<button type="submit" class="btn btn-primary w-100">Register</button>
    		</form>
    		<a href="login.jsp">Login to existing account</a>
    	</div>
    </div>
    
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    
</body>
</html>