 <%@ page errorPage="exception.jsp" %>
<% 
String num1 = request.getParameter("numone"); 
String num2 = request.getParameter("numtwo"); 
int var1= Integer.parseInt(num1);
int var2= Integer.parseInt(num2);
int r= var1 / var2;
out.print("Output is: "+ r);
%>