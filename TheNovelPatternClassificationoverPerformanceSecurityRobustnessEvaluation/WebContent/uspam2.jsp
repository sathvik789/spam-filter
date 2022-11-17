<%@ include file="aheader.jsp"%>

<%@page import="databaseconnection.*,java.sql.*"%>
	
			


			<br>
			

			<table >
<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>


<table  border="3" width="760">



<!--<th><input type="submit" value="delete" width="100"></th>-->

<%
	String ss="";
try{


	////System.out.println("inbox page.="+from_mail);
Connection con = databasecon.getconnection();
Statement stmt = con.createStatement();
Statement stmt1 = con.createStatement();
ResultSet rs1 = stmt1.executeQuery("SELECT * FROM spamreport WHERE status1='new'   " );



while(rs1.next()){
%>
<tr><td>From: <%=rs1.getString(2)%>
<td><font size="+1" color="#ff6633">Spam User: </font><font size="+2" color="red"><%=rs1.getString(3)%></font><br><textarea name="" rows="3" cols="40"><%=rs1.getString(4)%></textarea><td valign="center"><form method="post" action="uspam3.jsp">
	<input type="hidden" name="sno" value="<%=rs1.getString(1)%>">
	<br>
	<input type="submit" value="Verified">

</form>
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