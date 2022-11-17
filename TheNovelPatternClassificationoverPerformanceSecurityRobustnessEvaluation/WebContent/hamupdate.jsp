
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%@ include file="aheader.jsp"%>
		<form action="hamupdate1.jsp">
<br><br><br>

          <table bgcolor="" cellpadding="20" cellspacing="5" border="0" >
            <tr  bgcolor="#848ea6"> 
            <tr bgcolor="#848ea6"> 
             
            
            
              
              
            </tr>
            <%
			String id=request.getParameter("id");

			


ResultSet rs=null;

try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select * from hwords where sno='"+id+"' ";
	//System.out.println(qry);
		rs =st.executeQuery(qry);
		String sno=null,domain=null;
	while(rs.next())
	{
	sno=rs.getString(1);
	

domain=rs.getString(2);
//System.out.println(domain);
	 
%>
      
			<tr > 
              <td align="right"><font size="+2" color="#ff0066"><font size="+2" color="#ff0066"><strong>S. No:</strong></font></td> <td ><%=sno%> <input type="hidden" name="sno" value=<%=sno%>>
               
			   
			   
			   <tr> <td align="right"> <font size="+2" color="#ff0066"><strong>Ham Word</strong></font></td><td >			<div class="user"><input type="text" name="domian" value= "<%=domain%>" > </td></tr></div>
             
           
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