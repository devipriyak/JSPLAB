<%@ page import="java.sql.*" %>  

<%

//Read values from the form
String rollno=request.getParameter("id");
int id=Integer.parseInt(rollno);
String name=request.getParameter("name");
out.println(id + " "+name);
//DB Steps
Class.forName("oracle.jdbc.driver.OracleDriver");     
out.println("Driver Loaded");
Connection con=
 DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","lbrce"); 
out.println("<br>Connection Created");
//Create PreparedStatement object by passing the sql query
String sql="insert into stu values(?,?)";
PreparedStatement stmt=con.prepareStatement(sql);
out.println("<br>Statement Created");

//set the values
stmt.setInt(1,id);
stmt.setString(2,name);
//Execute Query
stmt.executeUpdate();
out.println("<br>Records Inserted");
%>