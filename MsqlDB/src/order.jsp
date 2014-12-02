<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Browse</title>
<style>
	body {background-color:#FAF3AA;
			text-align:center;}
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

<form  action="index.jsp" method="get">

</form>
<% 
String query = null;
String name = "Order";
name = request.getParameter("name");
	if (name!= null&&name.trim().equals("Kingdom"))
	{
		 query = "SELECT DISTINCT Kingdom FROM bioclass";
		 
		 System.out.println(name);
		 Connection conn = dbConn.getDBConnection();
		 Statement stmt = conn.createStatement();
		 //String queryy = "SELECT DISTINCT Phyla, Species FROM bioclass";
		 System.out.println(query);

		 ResultSet rs = stmt.executeQuery(query);

		 	while(rs.next())
		 	{  
		 	String kingdom = rs.getString("Kingdom");
		     %>
		      Species <%=rs.getString("Kingdom")%>
		  	<center>
		     <tr>
		     
		     </td>
		     </tr><%; %>
		 </center>

		     <% 
		 }
		 conn.close();
		 
	}
	
	if (name!= null&&name.trim().equals("Order"))
	{
		 query = "SELECT DISTINCT Phyla FROM bioclass";
	
	
System.out.println(name);
Connection conn = dbConn.getDBConnection();
Statement stmt = conn.createStatement();
//String queryy = "SELECT DISTINCT Phyla, Species FROM bioclass";
System.out.println(query);

ResultSet rs = stmt.executeQuery(query);

	while(rs.next())
	{  
	String kingdom = rs.getString("Phyla");
    %>
     Species <%=rs.getString("Phyla")%>
 	<center>
    <tr>
    
    </td>
    </tr><%; %>
</center>

    <% 
}
conn.close();
	}
%>
