<%@page import="com.entity.Student"%>
<%@page import="com.conn.DBconnect"%>
<%@page import="com.dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<h1 style="background-color:red;color:white;padding-left:550px">Edit Student</h1>
<%   
       int id=Integer.parseInt(request.getParameter("id")) ;
    StudentDAO dao= new StudentDAO(DBconnect.getConn());
    Student s=dao.getStudentById(id);
%>


<form action="update" method="post">
    <label for="fullName">Full Name:</label>
    <input type="text" id="name" name="name" value="<%=s.getFullname() %>" required>

    <label for="dob">Date of Birth:</label>
    <input type="date" id="dob" name="dob"   value="<%=s.getDob() %>"required>

    <label for="address">Address:</label>
   <input type="text" id="address" name="address" value="<%=s.getAddress() %>" required>
   
    
 <label for="qualification">Qualification</label>
    <input type="text" id="qualification" name="qualification"   value="<%=s.getQualification() %>"required>


    <label for="email">Email Address:</label>
    <input type="text" id="email" name="email"   value="<%=s.getEmail() %>" required>
       <input type="hidden" name="id" value="<%=s.getId()%>">
    <button type="submit">Update</button>
</form>
</body>
</html>