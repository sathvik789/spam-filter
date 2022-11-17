<%@ include file="Header2.jsp"%>
<%@page import="databaseconnection.*,ct.*,java.sql.*,java.io.*,java.util.*"%>
<%!


%>
<html>
<body>
<%

try
{
int id=Integer.parseInt(request.getParameter("id"));
String userid="";

con = databasecon.getconnection();
Statement stmt1 = con.createStatement();
File f=new File("test.txt");
f.delete();
f.createNewFile();


PrintWriter pw=new PrintWriter(f);

stmt1.executeUpdate("update compose set mstatus='uspam' WHERE id='"+id+"'" );
ResultSet rs=stmt1.executeQuery("select * from compose  WHERE id='"+id+"'");
	while(rs.next())
	{
		pw.println(rs.getString("message"));
		pw.println(rs.getString("files"));
		userid=rs.getString("frommail");
	}
pw.flush();
pw.close();
Vector v=Occurance.main(f);
String words="";
for(Object o:v)
	{
		words=words+" "+o+",";
}

//System.out.println(words);
stmt1.executeUpdate("insert into spamreport(fromemail, userid, words) values('"+(String)session.getAttribute("uname")+"','"+userid+"','"+words+"')" );
System.out.println("inserted into spamreport");
response.sendRedirect("inbox.jsp");
}
catch(Exception e)
{
System.out.println(e);
}

%>
</body>
</html>
