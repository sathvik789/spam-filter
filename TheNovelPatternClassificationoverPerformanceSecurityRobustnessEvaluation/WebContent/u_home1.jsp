<%@ include file="Header2.jsp"%>

				
				<%
		if(request.getParameter("message")!=null&&request.getParameter("message").equalsIgnoreCase("succes"))
		{
			out.println("<script>alert('Your Email Sent !!')</script>");
		}
%>
<font size="+2" color="">Welcome <%=session.getAttribute("name")%></font>
<br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>