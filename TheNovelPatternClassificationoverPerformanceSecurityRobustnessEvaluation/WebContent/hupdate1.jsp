
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%
		String sno=request.getParameter("sno"); 
		String domain=request.getParameter("domian"); 


try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="update  harm_users set harm_user ='"+domain+"' where  sno='"+sno+"' ";
		int d =st.executeUpdate(qry);
		if(d>0)
	{
			response.sendRedirect("harm.jsp?msg=update");
	}}catch(Exception e){ 
	out.println(e);
	}
 %>
 