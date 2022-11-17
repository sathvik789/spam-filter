
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%

		String domain=request.getParameter("domian"); 


try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="update  threshold set threshold ='"+domain+"'  ";
		int d =st.executeUpdate(qry);
		if(d>0)
	{
			response.sendRedirect("tvalue.jsp?msg=update");
	}}catch(Exception e){ 
	out.println(e);
	}
 %>
 