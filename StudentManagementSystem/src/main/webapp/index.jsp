<%@page import="com.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.StudentDAO"%>

<%@page import="com.conn.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student management system</title>
<style>
        <style>
#student {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#student td, #student th {
  border: 1px solid #ddd;
  padding: 8px;
}

#student tr:nth-child(even){background-color: #f2f2f2;}

#student tr:hover {background-color: #ddd;}

#student th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
 
</head>
<body>

<%@include file="navbar.jsp" %>

<h1>Student Details</h1>
 <c:if test=" ${not empty succMsg }">
   <p>${succMsg}</p>
   <c:remove var="succMsg"/>
   </c:if>
    <c:if test=" ${not empty errorMsg }">
   <p>${errorMsg}</p>
   <c:remove var="errorMsg"/>
   </c:if>

<table id="student">
<thead>
  <tr>
    <th>Fullname</th>
    <th>DOB</th>
    <th>Address</th>
    <th>Quali</th>
    <th>Email</th>
    <th>Action</th>
  </tr>
</thead>
<tbody>
 <%
StudentDAO dao= new  StudentDAO(DBconnect.getConn());
       List<Student> list =dao.getAllStudent();
       for(Student s:list)
       {
    	 %>
    	 
  <tr>
    <td><%=s.getFullname() %></td>
    <td><%=s.getDob() %></td>
    <td><%=s.getAddress() %></td>
    <td><%=s.getQualification() %></td>
     <td><%=s.getEmail() %></td>
     <td>
     <a href="editStudent.jsp?id=<%=s.getId()%>" style="background-color:cyan">Edit</a>
      <a href="deleteStudent?id=<%=s.getId()%>"  style="background-color:red">Delete</a>
     </td>
  </tr>
    	 <%   
    	   
       }
 %>





  </tbody>
</table>

</body>
</html>