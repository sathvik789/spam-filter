<%@ include file="Header2.jsp"%>
<%@page import="databaseconnection.*,java.sql.*"%>
<%!


%>
<html>
<body>
<%
try
{
int id=Integer.parseInt(request.getParameter("id"));


con = databasecon.getconnection();
Statement stmt1 = con.createStatement();

stmt1.executeUpdate("update compose set mstatus='inbox' WHERE id='"+id+"'" );
response.sendRedirect("trash.jsp");
}
catch(Exception e)
{
System.out.println(e);
}

%>
</body>
</html>
