<%@ include file="Header2.jsp"%>
<%!

String st;
%>
	
			
<div class="comment-form">
<form action="uploadServlet" enctype="multipart/form-data" method="post">
			<br>
			

			<table >
<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>


<table align="center" border="1" cellpadding="10" cellspacing="10" width="700">
<tr>
	
	<th><font size="" color="gray"><strong>To</strong></font></th>
	<th><font size="" color="gray">Subject</font></th>
	<th><font size="" color="gray">Message</font></th>


</tr>

<%
String ss="";
try{
	String from_mail=(String)session.getAttribute("uname");
	//System.out.println("inbox page.="+from_mail);
con = databasecon.getconnection();
stmt = con.createStatement();
stmt1 = con.createStatement();
rs1 = stmt1.executeQuery("SELECT id,email,SUBJECT,message,files, vstatus FROM compose WHERE  email!='' and  frommail='"+from_mail+"'" );



while(rs1.next()){

	st=rs1.getString(1);
	//System.out.println(st);
%>
<tr>
	
	<td align=""><font size="4"><%=rs1.getString("email")%><font></td>
	<td align=""><font size="4"><%=rs1.getString("SUBJECT")%><font></td>
	<td ><font size="4" color="#c9c9c9"><%ss=rs1.getString("message"); 
	try
	{out.println(ss.substring(0,20));
	}catch(Exception e){out.println(ss);}
	%>.....<font></td>
	<td><%if(rs1.getString("vstatus").equals("new")){
%>
<img src="images/notseen.png" width="28" height="23" border="0" alt="">
<%	
	}else{
%>
<img src="images/seen.png" width="28" height="23" border="0" alt="">
<%	

}
	
	%>

	
	
		

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
</form><br><br><br><br><br><br><br><br>
</div>


<%@ include file="footer.jsp"%>