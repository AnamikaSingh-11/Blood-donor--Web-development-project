<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us - Blood Donor Application</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
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
            margin-bottom: 20px;
            animation: fadeInDown 1s ease-in-out;
        }
        .contact-form {
            margin: 20px 0;
        }
        .contact-form label {
            display: block;
            margin: 10px 0 5px;
        }
        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .contact-form button {
            background-color: #e74c3c;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .contact-form button:hover {
            background-color: #c0392b;
        }
        .map {
            margin: 20px 0;
            text-align: center;
        }
        .map iframe {
            width: 100%;
            height: 300px;
            border: none;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .social-media {
            text-align: center;
            margin: 30px 0;
        }
        .social-media a {
            margin: 0 10px;
            color: #e74c3c;
            font-size: 24px;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        .social-media a:hover {
            color: #c0392b;
        }
        .support {
            background-color: #f7f7f7;
            padding: 20px;
            border-radius: 8px;
            margin-top: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .support h3 {
            color: #333;
            margin-top: 0;
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
    </style>
</head>
<body>
    <jsp:include page="Header.jsp"></jsp:include>
    <div class="container">
        <h2>Contact Us</h2>
        
        <div class="contact-form">
            <form action="ContactServlet" method="post">
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" required>
                
                <label for="email">Your Email:</label>
                <input type="email" id="email" name="email" required>
                
                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" required>
                
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="5" required></textarea>
                
                <button type="submit">Send Message</button>
            </form>
        </div>

        <div class="map">
            <h3>Our Location</h3>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.835434509193!2d144.95373631566793!3d-37.81720974202147!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad65d5e8c315481%3A0xb72c66abf9a2f3d!2sBlood%20Donor%20Center!5e0!3m2!1sen!2sus!4v1614398368505!5m2!1sen!2sus" allowfullscreen="" loading="lazy"></iframe>
        </div>
        
        <div class="social-media">
            <h3>Connect with Us</h3>
            <a href="#"><i class="fab fa-facebook"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-linkedin"></i></a>
        </div>
        
        <div class="support">
            <h3>Customer Support</h3>
            <p>If you need any assistance, please reach out to our customer support team. We're here to help you 24/7.</p>
            <p>Email: support@blooddonorapp.com</p>
            <p>Phone: +1 (800) 123-4567</p>
        </div>
    </div>
</body>
</html>
