<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Blood Donors</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #ffffff;
            color: #333333;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background: #f7f7f7;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #e74c3c;
            text-align: center;
            margin-bottom: 30px;
            font-size: 2em;
            position: relative;
        }
        h2::after {
            content: '';
            display: block;
            width: 100px;
            height: 4px;
            background-color: #e74c3c;
            margin: 10px auto 0;
            border-radius: 2px;
        }
        .form-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        form {
            width: 100%;
            margin-bottom: 30px;
        }
        form label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        form select, form input[type="submit"] {
            width: calc(50% - 10px);
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ddd;
            background: #ffffff;
            color: #333333;
            font-size: 1em;
        }
        input[type="submit"] {
            background-color: #e74c3c;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #c0392b;
        }
        .image-container {
            text-align: center;
            margin: 30px 0;
        }
        .image-container img {
            width: 100%;
            max-width: 400px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .table-responsive {
            overflow-x: auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #e74c3c;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        @media (max-width: 768px) {
            .form-container {
                flex-direction: column;
            }
            form select, form input[type="submit"] {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <jsp:include page="Header.jsp"></jsp:include>
    <div class="container">
        <h2>Find a Blood Donor</h2>

        <div class="image-container">
            <img src="images/blood-donation-banner.jpg" alt="Blood Donation Banner">
        </div>

        <div class="form-container">
            <form action="Search.jsp" method="get">
                <label for="bg">Blood Group</label>
                <select name="bg" id="bg" required>
                    <option value="" disabled selected>Select Blood Group</option>
                    <option>A+</option>
                    <option>B+</option>
                    <option>AB+</option>
                    <option>O+</option>
                    <option>A-</option>
                    <option>B-</option>
                    <option>AB-</option>
                    <option>O-</option>
                </select>
                
                <label for="City">City</label>
                <select name="City" id="City" required>
                    <option value="" disabled selected>Select City</option>
                    <option>Jabalpur</option>
                    <option>Bhopal</option>
                    <option>Katni</option>
                    <option>Delhi</option>
                </select>
                
                <input type="submit" name="b1" value="Search" />
            </form>
        </div>

        <%
        if(request.getParameter("b1") != null) {
            %>
            <div class="table-responsive">
                <table>
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Mobile</th>
                            <th>Blood Group</th>
                            <th>City</th>
                        </tr>
                    </thead>
                    <tbody>
            <% 
            try {
                int cnt = 1;
                Class.forName("org.postgresql.Driver");
                Connection cn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "Password#12");
                String sql = "SELECT * FROM blooddonor WHERE bg = ? AND city = ?";
                PreparedStatement pstmt = cn.prepareStatement(sql);
                pstmt.setString(1, request.getParameter("bg"));
                pstmt.setString(2, request.getParameter("City"));
                ResultSet rs = pstmt.executeQuery();
                while(rs.next()) {
            %>
                        <tr>
                            <td><%= cnt %></td>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("email") %></td>
                            <td><%= rs.getString("mobile") %></td>
                            <td><%= rs.getString("bg") %></td>
                            <td><%= rs.getString("city") %></td>
                        </tr>
            <% 
                    cnt++;
                }
                rs.close();
                pstmt.close();
                cn.close();
            } catch(Exception ex) {
                System.out.println(ex);
            }
            %>
                    </tbody>
                </table>
            </div>
        <%
        }
        %> 
    </div>
</body>
</html>
