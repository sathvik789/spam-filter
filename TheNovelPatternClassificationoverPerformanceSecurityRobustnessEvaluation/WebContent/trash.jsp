<%@ include file="Header2.jsp"%>


	
			
<div class="comment-form">
<form action="uploadServlet" enctype="multipart/form-data" method="post">
			<br>
			

			<table >
<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>


<table  border="3" cellpadding="20" cellspacing="10" width="760">
<tr>


<!--<th><input type="submit" value="delete" width="100"></th>-->
	<td width="20%"><font size="" color="gray"><strong></strong></font></th>
	<td  width="40%"><font size="" color="gray"></font></th>
	<td  width="30%"><font size="" color="gray"></font></th>
	<td  width="5%"><font size="" color="gray"></font></th>
	<td  width="5%"><font size="" color="gray"></font></th>
</tr>

<%
	String ss="";
try{
	String from_mail=(String)session.getAttribute("uname");
	//System.out.println("inbox page.="+from_mail);
con = databasecon.getconnection();
stmt = con.createStatement();
stmt1 = con.createStatement();
rs1 = stmt1.executeQuery("SELECT * FROM compose WHERE email='"+from_mail+"'  and mstatus='trash'  OR cc='"+from_mail+"' OR bcc='"+from_mail+"'  " );



while(rs1.next()){
%>
<tr>
	<!--<td ><input type="checkbox" name="<%=rs1.getString("id")%>" /></td>-->
	<td ><font size="4" color="#4d7abf"><%=rs1.getString("frommail")%><font></td>
	<td ><font size="4" color="#939393"><b><%=rs1.getString("SUBJECT")%><font></td></b>
	<td ><font size="4" color="#c9c9c9"><%ss=rs1.getString("message"); try
	{out.println(ss.substring(0,20));
	}catch(Exception e){out.println(ss);}
	%>.....<font></td>

		
	<td ><a href="restoremail.jsp?id=<%=rs1.getString("id")%>"><img src="images/res.png" width="22" height="22" border="0" alt=""><font color="green" size="3"></font></a></td>
		<td ><font size="4" color="#c9c9c9"><%if(rs1.getString("vstatus").equals("new")){out.println("<img src=images/newgood.gif width=33 height=16>");}%><font></td>
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
</table><br><br><br><br>
</form>



<%@ include file="footer.jsp"%>