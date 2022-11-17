
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%
		String sno=request.getParameter("id"); 
ResultSet rs=null;
String all="allowed";
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="delete from swords where sno='"+sno+"' ";
	//System.out.println("qry="+qry);
		int d =st.executeUpdate(qry);
		if(d>0)
	{
			response.sendRedirect("swords.jsp?msg1=deleted");
	}}catch(Exception e){}
 %>
 