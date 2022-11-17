
<%@ page  import="java.sql.*"  import="java.io.*" import="databaseconnection.*"%>
<br><br><br><br>
<%
try
{
	File f=null;
	PrintWriter pw=null;
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
    String qry="select * from compose";
	ResultSet rs =st.executeQuery(qry);
	while(rs.next())
	{
		f=new File("E://Mails/mail"+rs.getString(1));
		f.createNewFile();
		pw=new PrintWriter(f);
		pw.println(rs.getString(2));	
				pw.println(rs.getString(3));	
								pw.println(rs.getString(4));	
										pw.println(rs.getString(8));	
												pw.println(rs.getString(5));	
																pw.println(rs.getString(6));	
																				pw.println(rs.getString(7));	

		pw.flush();
		pw.close();

	}
	response.sendRedirect("backup.jsp?id=succ");
}catch(Exception e){
		System.out.println(e);
	}

%>

