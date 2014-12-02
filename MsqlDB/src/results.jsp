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
<h1>Results</h1>

<% 
String diet = request.getParameter("diet");
String location = request.getParameter("location");
String habitat = request.getParameter("habitat");
String time = request.getParameter("time");
String status = request.getParameter("status");

Connection conn = dbConn.getDBConnection();
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT habitat FROM location WHERE ");
	while(rs.next())
	{  
	
    //String species = rs.getString("Species");
    //String genus = rs.getString("Genus");
    %>
    <center>
    <table border='3' cellpadding='5' 
 cellspacing='2' width="800px">  
 	<center>
    <tr>
    <td><%=rs.getString("species")%></td><td><%=rs.getString("genus")%>
    </td>
    </tr><%; %>
</center>
</table>
</center>
    <% 
    
}
conn.close();

//http://stackoverflow.com/questions/12951486/how-to-call-java-method-in-jsp
// http://www.easywayserver.com/blog/java-best-database-connectivity-web/
//awesome!
//http://wiki4.caucho.com/Java_EE_Servlet_tutorial_:_Using_JSPs_to_create_header,_footer_area,_formatting,_and_basic_CSS_for_bookstore
%>

</body>
</html>