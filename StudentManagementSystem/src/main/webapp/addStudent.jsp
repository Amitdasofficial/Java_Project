<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <style>
        /* Basic styling for the form */
        form {
            width: 300px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="date"],
        textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<%@include file="navbar.jsp" %>
<h1 style="background-color:red;color:white;padding-left:550px">Add Student Data</h1>
   <c:if test=" ${not empty succMsg }">
   <p>${succMsg}</p>
   <c:remove var="succMsg"/>
   </c:if>
    <c:if test=" ${not empty errorMsg }">
   <p>${errorMsg}</p>
   <c:remove var="errorMsg"/>
   </c:if>
   
<form action="register" method="post">
    <label for="fullname">Full Name:</label>
    <input type="text" id="name" name="name" required>

    <label for="dob">Date of Birth:</label>
    <input type="date" id="dob" name="dob" required>

    <label for="address">Address:</label>
    <textarea id="address" name="address" rows="4" required></textarea>
    
 <label for="qualification">Qualification</label>
    <input type="text" id="qualification" name="qualification" required>


    <label for="email">Email Address:</label>
    <input type="text" id="email" name="email" required>

    <input type="submit" value="Submit">
</form>
</body>
</html>