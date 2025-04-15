<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
        }
        h2 {
            text-align: center;
            color: #e74c3c;
            margin-bottom: 30px;
            font-size: 2.5em;
        }
        .alert {
            margin-top: 20px;
            text-align: center;
            font-size: 1.2em;
        }
        .feature-box {
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        .feature-box h3 {
            margin-top: 0;
            color: #333;
        }
        .feature-box p {
            font-size: 1.1em;
        }
        .btn-primary {
            background-color: #e74c3c;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            color: white;
            font-size: 1.2em;
            text-align: center;
            display: block;
            margin: 20px auto;
            transition: background-color 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #c0392b;
        }
        .intro {
            margin-bottom: 30px;
        }
        .intro p {
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <jsp:include page="Header.jsp"></jsp:include>
    <div class="container">
        <h2>Welcome to Our Blood Donor Application</h2>
        
        <%
        try {
            if (request.getParameter("reg") != null && Integer.parseInt(request.getParameter("reg")) == 1) {
        %>
        <div class="alert alert-success">
            <strong>Success!</strong> Record saved successfully.
        </div>
        <%
            }
        } catch (Exception ex) {
            // Handle any exceptions here if needed
        }
        %>
        
        <div class="intro">
            <p>Our Blood Donor Application is designed to help you easily register as a donor, search for donors, and connect with those in need of blood. We are committed to saving lives through a streamlined and user-friendly interface.</p>
        </div>
        
        <div class="feature-box">
            <h3>Easy Registration</h3>
            <p>Register quickly and easily to become a blood donor. Fill out a simple form and you're set to help those in need.</p>
        </div>
        
        <div class="feature-box">
            <h3>Find Donors Near You</h3>
            <p>Search for available blood donors based on blood group and city to find the right match in your area.</p>
        </div>
        
        <div class="feature-box">
            <h3>Stay Updated</h3>
            <p>Receive notifications about upcoming blood donation drives and important updates directly through the app.</p>
        </div>
        
        <a href="Reg.jsp" class="btn btn-primary">Register as a Donor</a>
    </div>
</body>
</html>
