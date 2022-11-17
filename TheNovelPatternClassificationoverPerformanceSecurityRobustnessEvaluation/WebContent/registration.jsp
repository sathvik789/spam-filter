

  <%
    String m=request.getParameter("message");
  if(m!=null && m.equalsIgnoreCase("succes"))
    {
     out.println("<script type=text/javascript>alert('Registration Succes'); </script>");
     }
%>



<%@ include file="headder.jsp"%>
<body>
<div class="content-top">

<script type="text/javascript">
var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>
		
		<h3>Register Hear</h3>
		<form action="reginsert.jsp" onsubmit="return validatePassword()">
		<div class="user">
				<i> </i>
				<input type="text" placeholder="Name" name="name">		
			</div>	
			<div class="user">
			<i> </i>
				<input type="text" placeholder="Choose Your User Name" name="uname">		
			</div>			
			<div class="user1">	
				<i> </i>		
			<input type="password" placeholder="Create password" name="password" id="password" required>
			</div>
			<div class="user1">	
				<i> </i>		
			<input type="password" placeholder="Conform password" name="password1" id="confirm_password" required>
			</div>
			
			<div class="user">
				<i> </i>
				<input type="date"  name="dob">		
			</div>
			<div class="user">
				<i> </i>
				<select name="gender">
					 <option value="male">Male</option>
						 <option value="female">Female</option>
						 
				</select>		
			</div>
			<div class="user">
				<i> </i>
				<input type="text" placeholder="Contact" name="contact">		
			</div>	
			<div class="user">
				<i> </i>
				<input type="text" placeholder="Address" name="address">		
			</div>	
	<br>
				<input type="submit" value="Submit" class="pure-button pure-button-primary">&nbsp;&nbsp;<input type="submit" value="Reset">
	
			<div class="user2">							
				
			</div>
			
		</form>

		</div>
		</body>
		<%@ include file="footer.jsp"%>
		
		
	
	
	