package Dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DataBaseConnector {
	public Connection connect;
	public Connection Dbconnect()
	{
	try 
	{
			Class.forName("com.mysql.jdbc.Driver");
	}
	catch(ClassNotFoundException e)
	{
		e.printStackTrace();
	}
	try 
	{
		connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");	
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	return connect;
	}
}
