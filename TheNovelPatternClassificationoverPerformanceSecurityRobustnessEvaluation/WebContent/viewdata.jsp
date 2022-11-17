<%@ include file="Header2.jsp"%>

<%!


%>
	
			
<div class="comment-form">
<form action="uploadServlet" enctype="multipart/form-data" method="post">
			<br>
			

			<table >
<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>


<table  border="1" cellpadding="10" cellspacing="10">
<tr>
	
	<th><font size="" color="gray"><strong>AttachMent Data</strong></font></th>
	
	

	
</tr>

<%
String id = request.getParameter("id");
//System.out.println(id);


try{
	String from_mail=(String)session.getAttribute("uname");
	//System.out.println("inbox page.="+from_mail);
con = databasecon.getconnection();
stmt = con.createStatement();
stmt1 = con.createStatement();
rs1 = stmt1.executeQuery("SELECT files FROM compose WHERE id='"+id+"'" );


while(rs1.next()){
%>
<tr>
	
	<td><font size="4"><%=rs1.getString("files")%><font></td>
	
	
	
		
	
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
<br><br><br><br>

<%@ include file="footer.jsp"%>