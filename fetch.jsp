<!--fetch.jsp-->
<%@ page import="java.sql.*" %>  

<%
//Read values from the form
String rollno=request.getParameter("id");
//Convert string into integer
int id=Integer.parseInt(rollno);

//DB Steps
Class.forName("oracle.jdbc.driver.OracleDriver");     

Connection con=
 DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","lbrce"); 

//Create PreparedStatement object by passing the sql query
String sql="Select sid,sname from stu where sid=?";//Dynamic query
PreparedStatement stmt=con.prepareStatement(sql);

//set the values
stmt.setInt(1,id);

//Execute Query
ResultSet rs=stmt.executeQuery();//Returns the data
//Fetch the Data

while(rs.next())//rs.next()-returns true if  the records are existed 
{
out.println("<center>");
out.println("<br>Welcome<br>");

out.println("ID:"+rs.getInt(1));//Display sid
out.println("<br>");
out.println("Name : "+rs.getString(2));//Display name
out.println("</center>");
}


%>