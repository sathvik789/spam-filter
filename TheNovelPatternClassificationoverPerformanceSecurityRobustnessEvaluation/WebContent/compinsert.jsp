<%@page import="databaseconnection.*,java.sql.*,javax.servlet.http.*"%>
<%!
Connection con;
Statement stmt;
%>
<%
con = databasecon.getconnection();
stmt = con.createStatement();
Statement stmt1 = con.createStatement();
int threshold=0;
Integer id=(Integer)session.getAttribute("dbid");
//System.out.println(id);
String email = request.getParameter("email");
String cc = request.getParameter("cc");
String bcc = request.getParameter("bcc");
String subject = request.getParameter("subject");

		String uname=(String)session.getAttribute("uname");


String msg = request.getParameter("message");
String	 message=msg.toLowerCase();
String	 file="";
ResultSet rs0=stmt.executeQuery("select * from compose where id='"+id+"'");
if(rs0.next())
{
file=rs0.getString("files");
try{file=file.toLowerCase();}catch(Exception e){}
}

message=message+file;
ResultSet rs2=null;
ResultSet rs=stmt.executeQuery("select sword from swords");
int spam=0;
int lastIndex=0;
String word="";

while(rs.next())
{
//spam word count
lastIndex=0;
word=rs.getString(1);
word=word.toLowerCase();

while(lastIndex !=-1)
	{
	lastIndex=message.indexOf(word,lastIndex);
	if(lastIndex !=-1)
		{
		spam++;
		lastIndex+=word.length();
		}
	}

}

System.out.println("");
System.out.println("");
System.out.println("************************************");
System.out.println("Spam Word Count="+spam);
 rs2=stmt.executeQuery("select * from threshold");
if(rs2.next())
{
	threshold=rs2.getInt(1);
}
System.out.println("Threshold Word Count="+threshold);

int res=spam;
System.out.println("Result (ham-spam)="+res);
String fres="";
if(res<threshold)
{
	fres="inbox";
System.out.println("Normal Mail");
}else{
	fres="spam";
	System.out.println("Spam Mail");
	
}
      
rs0=stmt.executeQuery("select * from harm_users where harm_user='"+uname+"' ");
if(rs0.next())
{
	fres="spam";
	System.out.println("Spam User");
}

rs0=stmt.executeQuery("select * from domain_list ");
while(rs0.next())
{

	if(uname.contains(rs0.getString(2))){
	fres="spam";
	System.out.println("Spam Domain");
}
}


/*

key=input;
str=data;

String str=rs.getString(4);
int lastIndex=0;
int count =0;
while(lastIndex !=-1)
	{
	lastIndex=str.indexOf(key,lastIndex);
	if(lastIndex !=-1)
		{
		count++;
		lastIndex+=key.length();
		}
	}
*/



int i = stmt.executeUpdate("update compose set email='"+email+"',cc='"+cc+"',bcc='"+bcc+"',subject='"+subject+"',message='"+msg+"',mstatus='"+fres+"' where id="+id+"");

if(i>0){
response.sendRedirect("u_home1.jsp?message=succes");
}else{
response.sendRedirect("");
}
%>