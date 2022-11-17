<%@ include file="aheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<br><br><br><br>
<%
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
	Statement st2 = con.createStatement();	
    String qry="select count(*) from compose";

	ResultSet rs =st.executeQuery(qry);
	if(rs.next())
	{
		%>
		<h1><%=rs.getString(1)%> : Total Mails</h3><br>
		<%

	}
}catch(Exception e){
System.out.println(e);
	}

%>

<form method="post" action="backup2.jsp">
	<input type="submit" value="Backup">
</form>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>