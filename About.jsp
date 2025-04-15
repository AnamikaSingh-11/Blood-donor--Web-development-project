<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - Blood Donor Application</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            margin: 0 auto;
            overflow: hidden;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }
        h2 {
            color: #e74c3c;
            text-align: center;
            margin-top: 0;
            animation: fadeInDown 1s ease-in-out;
        }
        h3 {
            color: #333;
        }
        .content {
            margin: 20px 0;
            line-height: 1.8;
        }
        .cta {
            background-color: #e74c3c;
            color: white;
            padding: 15px;
            text-align: center;
            margin-top: 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .cta a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }
        .cta:hover {
            background-color: #c0392b;
        }
        .cta a:hover {
            color: #f1c40f;
        }
        .testimonial {
            background-color: #f1f1f1;
            padding: 20px;
            margin: 20px 0;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .testimonial p {
            font-style: italic;
            font-size: 1.1em;
        }
        .testimonial h4 {
            margin-top: 10px;
            color: #e74c3c;
            font-weight: normal;
        }
        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .mission-statement {
            background-color: #f7f7f7;
            padding: 20px;
            margin: 20px 0;
            border-radius: 5px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .mission-statement p {
            font-size: 1.2em;
            margin: 0;
        }
        .dynamic-content {
            background-color: #dfe6e9;
            padding: 10px;
            border-radius: 5px;
            text-align: center;
            font-weight: bold;
            margin-top: 20px;
            display: none;
        }
        #toggleContent {
            cursor: pointer;
            color: #3498db;
            text-decoration: underline;
            margin-top: 20px;
            display: block;
            text-align: center;
        }
    </style>
    <script>
        function toggleContent() {
            var content = document.getElementById('dynamicContent');
            if (content.style.display === 'none') {
                content.style.display = 'block';
            } else {
                content.style.display = 'none';
            }
        }
    </script>
</head>
<body>
    <jsp:include page="Header.jsp"></jsp:include>
    <div class="container">
        <h2>About Us</h2>
        <div class="content">
            <div class="mission-statement">
                <p><strong>Our Mission:</strong> To save lives by making blood donation accessible and easy for everyone.</p>
            </div>
            
            <h3>Why Blood Donation Matters</h3>
            <p>Blood donation is a critical component of healthcare, providing life-saving support to millions of people every year. From accident victims to patients undergoing surgery, the need for blood is constant. By donating, you are giving the gift of life to someone in need.</p>
            
            <h3>Get Involved</h3>
            <div class="cta">
                <p>Ready to make a difference? <a href="register.jsp">Join our community of blood donors</a> and start saving lives today!</p>
            </div>
        </div>
        
        <h3>Testimonials</h3>
        <div class="testimonial">
            <p>"I never realized how easy it was to save a life until I used this app. The process was smooth, and now I donate regularly. It's a great feeling!"</p>
            <h4>- John Doe, Regular Donor</h4>
        </div>
        
        <div class="testimonial">
            <p>"Thanks to this app, I was able to find a donor quickly when my mother needed an urgent transfusion. I'm forever grateful."</p>
            <h4>- Jane Smith, Grateful Recipient</h4>
        </div>
        
        <span id="toggleContent" onclick="toggleContent()">Click here to learn more about our mission and vision</span>
        <div id="dynamicContent" class="dynamic-content">
            <p>We envision a world where every patient in need of blood can receive it promptly, and where every donor is recognized and appreciated for their life-saving contributions.</p>
        </div>
    </div>
</body>
</html>
