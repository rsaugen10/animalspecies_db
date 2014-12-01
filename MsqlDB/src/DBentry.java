/*
 * Program: CS485_lab4
 * Purpose: The program is designed to illustrate 1) the use of SQL connector 
 * to connect to and update on MySQL database; 2) the use of JSP to create a
 * Web page for data entry. To make the program work, both JDK, Apache, MySQL
 * need to be installed.
 * @copyright the program is intended for class use, it should not be distributed
 * outside the class without permission from the instructor, Dr. Mingrui Zhang  
 */
package db;
import java.sql.*;
import java.awt.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;



//http://www.javadb.com/connect-to-a-database-and-read-from-table/

public class DBentry 
{
	static DBentry instance = new DBentry();
	Connection dbconn;
	ResultSet results = null;
	PreparedStatement sql;
	String dpwd = null;
	StringBuilder sb = new StringBuilder();
	
	//change URL to your database server as needed
	String dbPath="jdbc:mysql://localhost:8889/natures_creatures";
	
	
	    public Connection getDBConnection() throws Exception{
	        Connection conn = null;
	        PreparedStatement sql;
	        Class.forName("com.mysql.jdbc.Driver").newInstance();
	        
	        String sURL="jdbc:mysql://localhost:8889/natures_creatures";
	     
	        
	        conn = DriverManager.getConnection(dbPath,"root","root");
	      return conn;
	    }
	
}