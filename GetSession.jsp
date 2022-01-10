<%@ page import = "javx.servlet.http.*,javax.servlet.*" %>
<%
   HttpSession session1=request.getSession();
String value=(String)session1.getAttribute("uid");
out.println("session value"+value);
%>

   
