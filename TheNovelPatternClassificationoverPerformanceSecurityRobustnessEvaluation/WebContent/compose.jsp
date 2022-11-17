<html>
<head>
<script>
function myFunction() {
    var myWindow = window.open("fileuploadcomp.jsp", "", "width=600, height=100");
}
</script>
</head>
<body>

<%@ include file="Header2.jsp"%>
				
	<div class="comment-form">
			<form action="compinsert.jsp" method="post">
			<br><br><br>
<font size="+3" color="">Compose Mail</font>

<%
Connection con=databasecon.getconnection();
			//System.out.println(con);
			Statement st=con.createStatement();

			st.executeUpdate("delete from compose where email is NULL ");
			ResultSet r=st.executeQuery("select max(id) from compose");
			int id=0;
			if(r.next()){
				id=r.getInt(1);
				id=id+1;
				
				//System.out.println(id);
				session.setAttribute("dbid",id);

			             }
		String uname=(String)session.getAttribute("uname");
String sql= "insert into compose(id, frommail) values(?,?)";
//PreparedStatement pst=con.prepareStatement("update register set profilepic=? where email='"+email+");
PreparedStatement pst=con.prepareStatement(sql);
pst.setInt(1,id);
pst.setString(2,uname);
int i=pst.executeUpdate();

%>

				<table>
<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<td><div class="form-top">
					<div class="form-top1">
						<input type="text" placeholder="Email" name="email" required>
						
					</div><br><br><br>
					<div class="form-top2">
						<input type="text" placeholder="Cc" name="cc">
					</div><br><br><br>
					<div class="form-top2">
						<input type="text" placeholder="Bcc" size="40" name="bcc">
					</div><br><br><br>
					<div class="form-top2">
						<input type="text" placeholder="Subject" size="60" name="subject" required>
					</div>
				
				
				
				
				<textarea placeholder="Message" name="message" required ></textarea>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p></P>
				<div class="form-top2">
						<a href="fileuploadcomp.jsp" onclick="window.open('fileuploadcomp.jsp?id=sajid', 'newwindow', 'width=450, height=250'); return false;">Select File for Attachment</a>
					</div>

				<input type="submit" value="Send">
			</form>
		</div>
</td>
</tr>
</table>
<%@ include file="footer.jsp"%>
</body>
</html>