<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        /* Reset default margin and padding for the entire page */
        body {
            margin: 0;
            padding: 0;
        }

        /* Style for the navbar */
        .navbar {
            background-color: black;
            overflow: hidden;
        }

        /* Style for the navbar links */
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        /* Change color on hover */
        .navbar a:hover {
            background-color:red;
            color: yellow;
        }
    </style>
</head>
<body>

<div class="navbar">
    <a href="index.jsp">Home</a>
    <a href="About.jsp">About</a>
    <a href="addStudent.jsp">AddStudent</a>
    <a href="#contact">Contact</a>
</div>
</body>
</html>