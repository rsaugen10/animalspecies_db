<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Browse</title>
<style>
	body {background-color:#FAF3AA;
			}
	ul {list-style-type:none;}
</style>
</head>
<body>

<%@ page import="java.io.*" %> 
<%@ page import="db.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.sql.*" %>


<jsp:useBean id="dbConn" scope="request" class="db.DBentry"/>
<center>
<h1>Browse</h1>
</center>


<a href="order.jsp?name=Kingdom">kingdom</a><span>
<a href="order.jsp?name=Order">order</a><span>

<br><br><br>

<jsp:include page="order.jsp" >
  <jsp:param name="name" value="Order"/>
</jsp:include>

	


</body>
</html>