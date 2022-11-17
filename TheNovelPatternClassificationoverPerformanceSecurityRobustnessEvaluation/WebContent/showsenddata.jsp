<%@ include file="Header2.jsp"%>
<%@page import="databaseconnection.*,java.sql.*"%>
			
<div class="comment-form">
<form action="uploadServlet" enctype="multipart/form-data" method="post">
			<br>
			

			<table >
<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>


<table align="center" border="1" cellpadding="10" cellspacing="10">
<tr>
	
	<th><font size="" color="gray"><strong>AttachMent Data</strong></font></th>
	
	

	
</tr>

<%
String id = request.getParameter("id");
//System.out.println(id);

String id1 = request.getParameter("id1");
//System.out.println(id1);


try{
	String from_mail=(String)session.getAttribute("uname");
	//System.out.println("inbox page.="+from_mail);
con = databasecon.getconnection();
stmt = con.createStatement();
stmt1 = con.createStatement();
rs1 = stmt1.executeQuery("SELECT files FROM compose WHERE id='"+id1+"'" );


while(rs1.next()){
%>
<tr>
	
	<td align="center"><font size="4"><%=rs1.getString("files")%><font></td>
	
	
	
		
	
</tr>

<%
}
}catch(Exception e){
e.printStackTrace();
}
%>
</table>


		
</td>
</tr>
</table>
</form>
</div>


<%@ include file="footer.jsp"%>