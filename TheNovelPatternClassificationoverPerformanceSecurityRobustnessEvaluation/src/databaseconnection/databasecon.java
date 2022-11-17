package databaseconnection;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.lang.Throwable;

public class databasecon
{
	static Connection con;
	public static Connection getconnection()
	{
 		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb","root","root");
		}
		catch(Exception e)
		{
			System.out.println("class error"+e);
		}
		return con;
	}
	
}
