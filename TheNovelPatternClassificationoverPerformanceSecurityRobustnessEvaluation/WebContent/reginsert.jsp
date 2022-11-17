<%@page import="databaseconnection.*,java.sql.*"%>
<%!
Connection con;
Statement stmt;
%>
<%
String name = request.getParameter("name");
String uname = request.getParameter("uname");
String password = request.getParameter("password1");

String dob = request.getParameter("dob");
String gender = request.getParameter("gender");
String contact = request.getParameter("contact");
String address = request.getParameter("address");

con = databasecon.getconnection();
stmt = con.createStatement();

int i = stmt.executeUpdate("insert into register values('"+name+"','"+uname+"','"+password+"','"+dob+"','"+gender+"','"+contact+"','"+address+"')");

if(i>0){
response.sendRedirect("registration.jsp?message=succes");
}else{
response.sendRedirect("");
}
%>