
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%
		String sno=request.getParameter("sno"); 



try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="update  spamreport set status1 ='verified' where  sno='"+sno+"' ";
		int d =st.executeUpdate(qry);
		if(d>0)
	{
			response.sendRedirect("uspam2.jsp?msg=update");
	}}catch(Exception e){ 
	out.println(e);
	}
 %>
 