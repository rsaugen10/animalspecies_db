<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>A sample to connect to DB</title>
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
<h1>Browse</h1>
<form  action="index.jsp" method="get">
Bioclass
</form>

<br><br><br>
<%
	String bioclass=request.getParameter("species");
	Connection conn = dbConn.getDBConnection();
	Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM bioclass");
		while(rs.next())
		{  
			
	    String species = rs.getString("Species");
	    String genus = rs.getString("Genus");
	    %>
	    <center>
	    <tr><td><%=rs.getString("species")%></td><td><%=rs.getString("genus")%></td></tr><%; %>
	    </center>
	    <% 
		}
		//WARNING!
		//Need to process ResultSet before closing connection

	conn.close();

	//http://stackoverflow.com/questions/12951486/how-to-call-java-method-in-jsp
	// http://www.easywayserver.com/blog/java-best-database-connectivity-web/
	//awesome!
%>


</body>
</html>