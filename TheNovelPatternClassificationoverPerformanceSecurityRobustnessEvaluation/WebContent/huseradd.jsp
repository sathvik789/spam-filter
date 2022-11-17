
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%
		String sno=request.getParameter("domian"); 
ResultSet rs=null;

try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
	Statement st2 = con.createStatement();	
    String qry="select max(sno) from harm_users ";
int d=0;
	rs =st.executeQuery(qry);
	if(rs.next())
	{
		 d=st2.executeUpdate("insert into harm_users values('"+(rs.getInt(1)+1)+"','"+sno+"')");
	}
		if(d>0)
	{
			response.sendRedirect("harm.jsp");
	}//}catch(com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException e){
	}catch(Exception e){	
		response.sendRedirect("harm.jsp?id=dupp");
	}
 %>
 