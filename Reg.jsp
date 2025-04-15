<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            color: #333333;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
        h2 {
            text-align: center;
            color: #e74c3c;
            margin-bottom: 30px;
            font-size: 2em;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 1em;
        }
        .btn-success {
            background-color: #e74c3c;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1.2em;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }
        .btn-success:hover {
            background-color: #c0392b;
        }
        @media (max-width: 768px) {
            .container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <jsp:include page="Header.jsp"></jsp:include>
    <div class="container">
        <h2>Registration</h2>
        <form method="post" action="Registration.jsp">
            <div class="form-group">
                <label for="t1">Name</label>
                <input type="text" name="t1" id="t1" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="t2">Email</label>
                <input type="email" name="t2" id="t2" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="t3">Mobile</label>
                <input type="text" name="t3" id="t3" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="bg">Blood Group</label>
                <select name="bg" class="form-control" required>
                    <option value="" disabled selected>Select your Blood Group</option>
                    <option>A+</option>
                    <option>B+</option>
                    <option>AB+</option>
                    <option>O+</option>
                    <option>A-</option>
                    <option>B-</option>
                    <option>AB-</option>
                    <option>O-</option>
                </select>
            </div>
            <div class="form-group">
                <label for="City">City</label>
                <select name="City" class="form-control" required>
                    <option value="" disabled selected>Select your City</option>
                    <option>Jabalpur</option>
                    <option>Bhopal</option>
                    <option>Katni</option>
                    <option>Delhi</option>
                </select>
            </div>
            <div class="form-group">
                <input type="submit" name="b1" value="Submit" class="btn btn-success" />
            </div>
        </form>
    </div>

    <%
    if (request.getParameter("b1") != null) {
        try {
            Class.forName("org.postgresql.Driver");
            Connection cn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres",
            "Password#12");
            String sql = "insert into blooddonor values('" + request.getParameter("t1") + "','" + request.getParameter("t2")
            + "','" + request.getParameter("t3") + "','" + request.getParameter("bg") + "','"
            + request.getParameter("City") + "')";

            Statement stmt = cn.createStatement();
            stmt.execute(sql);
            stmt.close();
            cn.close();
            response.sendRedirect("Home.jsp?reg=1");

        } catch (Exception ex) {
            System.out.println(ex);
        }
    }
    %>
</body>
</html>
