
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
		<%@ include file="aheader.jsp"%>
				<%
		if(request.getParameter("id")!=null&&request.getParameter("id").equalsIgnoreCase("dupp"))
		{
			out.println("<script>alert('Duplicate Domain')</script>");
		}

		if(request.getParameter("msg")!=null)
		{
			out.println("<script>alert('Domain Updated Successfully')</script>");
		}
		if(request.getParameter("msg1")!=null)
		{
			out.println("<script>alert('Domain Deleted Successfully')</script>");
		}
		%>
		<form>

<font size="+3" color="#ef5098">List Of Domains</font>
<center>
          <table bgcolor="" cellpadding="20" cellspacing="5" width="500" border="0" align="center">
            <tr  bgcolor="#848ea6"> 
            <tr bgcolor="#848ea6"> 
              <td align="center"><font color="#110022"><strong>S. No</strong></font></td>

			  <td align="center"><font color="#110022"><strong>Domain List</strong></font></td>


			  <td align="center"> <font color="#110022"><strong>Update</strong></font></td>
			  <td align="center"> <font color="#110022"><strong>Delete</strong></font></td>
            </tr>
            <%

			


ResultSet rs=null;
int i=0;
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select * from domain_list";
		rs =st.executeQuery(qry);
		String sno=null,domain=null;
	while(rs.next())
	{
	sno=rs.getString(1);
	

	domain=rs.getString(2);
	
	 
%>
            <tr bgcolor="#d2d2d2"> 
              <td align="center"> <strong><font size="3" color="#6300C6"> <%=++i%> </font></strong></td>
              <td align="center"><strong><font size="3" color="#FF3300"> <%=domain%> </font></strong></td>

				  <td align="center"><a href="update.jsp?id=<%=sno%>"><strong><font color="#6300C6" class="big"> 
                Update</font></strong></a></td>
				  <td align="center"><a href="delete.jsp?id=<%=sno%>"><strong><font color="#6300C6" class="big"> 
                Delete</font></strong></a></td>
            </tr>
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
				  	  <hr>

		<form method="post" action="domainadd.jsp">
          <table bgcolor="" cellpadding="20" cellspacing="5" width="500" border="0" align="center">
		  <tr><td><td><div class="user"><input type="text" name="domian"  required > </td><td><input type="submit" value="Add">

		  </tr></div>
	
		  </form>	
</table>

		<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>