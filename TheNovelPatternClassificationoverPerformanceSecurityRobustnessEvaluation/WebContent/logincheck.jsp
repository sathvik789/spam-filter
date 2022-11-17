<%@page import="databaseconnection.*,java.sql.*"%>
<%!
Connection con;
Statement st;
ResultSet rs;
%>
<%
try
{
	String uname = request.getParameter("uname");
	session.setAttribute("uname",uname);
//	//System.out.println("session name.= "+uname)
String password = request.getParameter("password");
////System.out.println(uname);
////System.out.println(password);

con=databasecon.getconnection();
String sql="select *from register where uname='"+uname+"' and password='"+password+"'"; 
st=con.createStatement(); 
 
rs=st.executeQuery(sql); 

if(rs.next())
	{
session.setAttribute("name",rs.getString("name"));
response.sendRedirect("u_home1.jsp?msg=succ");

	}
	else{
response.sendRedirect("login.jsp?id=fail");
}

	
}
catch(Exception e)
	{
	System.out.println(e);
}













%>