

  <%
    String m=request.getParameter("id");
  if(m!=null && m.equalsIgnoreCase("fail"))
    {
     out.println("<script type=text/javascript>alert('Sorry, Details are not matched, login again '); </script>");
     }
%>

<%@ include file="headder.jsp"%>

<div class="content-top">

		
		<h3>User Login</h3>
		<form action="logincheck.jsp">
			<div class="user">
				<i> </i>
				<input type="text" placeholder="User Name" name="uname">		
			</div>			
			<div class="user1">	
				<i> </i>		
			<input type="password" placeholder="password" name="password">
			</div>
			<div class="user2">							
				<input type="submit" value="Login">
			</div>
			<div class="user3">	<br><br>						
				<a href="registration.jsp">Register Hear</a>
			</div>
		</form>

		</div>

		<%@ include file="footer.jsp"%>
		</html>
		
	
	
	