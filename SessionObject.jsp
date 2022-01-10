<%@ page import = "javx.servlet.http.*,javax.servlet.*" %>
<%
   HttpSession session1=request.getSession();
session1.setAttribute("uid","DeviPriya");
out.println("session created");
%>

   
