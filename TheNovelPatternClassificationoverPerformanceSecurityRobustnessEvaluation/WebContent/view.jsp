<%@ include file="Header2.jsp"%>
<div class="comment-form">

			<br>
			<table >
<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>


<table align="center" border="1" cellpadding="10" cellspacing="10" width="700">
<tr>
	
	<!-- <th><font size="" color="gray"><strong>AttachMent Data</strong></font></th> -->
	
	

	
</tr>

<%
String id = request.getParameter("id");
//System.out.println(id);
String from_mail=(String)session.getAttribute("uname");
String at="";
try{
con = databasecon.getconnection();

stmt1 = con.createStatement();
stmt1.executeUpdate("update compose set vstatus='seen' WHERE id='"+id+"'" );
rs1 = stmt1.executeQuery("SELECT * FROM compose WHERE id='"+id+"'" );


while(rs1.next()){

at=rs1.getString("attached");
%>
<tr>
<td >	<font size="" color="#4071bb">From: <font size="+2"><%=rs1.getString("frommail")%><font></td></font>
<tr><td >	<font size="" color="#4071bb">Cc: <font size="+2"><%=rs1.getString("cc")%><font></td></font>
<tr><td >	<font size="" color="#4071bb">Bcc: <font size="+2"><%=rs1.getString("bcc")%><font></td></font>
<tr><td >	<hr>
<tr><td >	<font size="" color="#2599ba">Subject: <font size="+1"><%=rs1.getString("subject")%><font></td></font>
<tr><td >	<hr>

<tr><td border=2>	<table border=1 width="700"><tr><td><font size="" color="#2599ba"> <font size="+1"><%=rs1.getString("message")%><font>
<br><br><br><br><br>
</td></table></font>


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
</table><br>
<%
if(at.equals("yes"))
{
%>	<a href="viewdata.jsp?id=<%=id%>">Attachment</a>
<%}
%>


</div>
<table align="right">
<tr>
	<td><form method="post" action="uspam.jsp">
		<input type="hidden" name="id" value="<%=id%>">
<input type="submit" value="Move To Spam">
	</form></td>
</tr>
</table>
<br><br><br><br>

<%@ include file="footer.jsp"%>