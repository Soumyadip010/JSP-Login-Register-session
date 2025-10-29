<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login | Library System</title>
    
    <link rel="stylesheet" href="./css/login.css"/>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    
</head>

<body>

    <!-- Background Video -->
    <video autoplay muted loop class="bg-video">
        <source src="<%=request.getContextPath()%>/resources/videoes/L3.mp4">
    </video>

    <!-- Overlay -->
    <div class="overlay"></div>

    <!-- Login Form -->
    <div class="login-container">
        <div class="login-card">
            <h3>Library Login</h3>
            <form action="loginProcess.jsp" method="post">
                <div class="mb-3">
                    <label class="form-label">User ID</label>
                    <input type="number" name="userid" class="form-control" placeholder="Enter userid" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <input type="password" name="password" class="form-control" placeholder="Enter password" required>
                </div>

                <button type="submit" class="btn btn-primary w-100">Login</button>
                <p class="text-center mt-3">
                    <a href="register.jsp">New user? Register here</a>
                </p>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>
