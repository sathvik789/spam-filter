
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%@ include file="aheader.jsp"%>
		<form action="tvalue1.jsp">
<br><br><br>

          <table bgcolor="" cellpadding="20" cellspacing="5" border="0" >
            <tr  bgcolor="#848ea6"> 
            <tr bgcolor="#848ea6"> 
                 
            </tr>
            <%

ResultSet rs=null;

try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select * from threshold";
	//System.out.println(qry);
		rs =st.executeQuery(qry);
		String sno= "0";
if(rs.next())
	{
	sno=rs.getString(1);
	
%>
			   Threshold Value is <%=sno%>
			   <tr> <td align="right"> <font size="+2" color="#ff0066"><strong>Threshold Value update</strong></font></td><td >			<div class="user"><input type="text" name="domian" value= "<%=sno%>" > </td></tr></div>
                        
            </tr>
			<tr><td></td><td>		<input type="submit" value="Update"></td></tr>
            <%
	   }
}
catch(Exception e1)
{
	out.println(e1);
}
 %>
          </table>
        </form>
		<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>