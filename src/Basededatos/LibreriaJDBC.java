package Basededatos;


import java.sql.*;

public class LibreriaJDBC {
	
	
	public static Connection conectarMysql(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MOV?serverTimezone=UTC","root","");
			if(con!=null)
				System.out.println("Conectado perfectamente a MYSQL");
			else
				System.out.println("No conectado a MYSQL");	
			return con;
		}catch(SQLException e2){
			System.out.println("ERRO1"+e2);
			return null;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("ERRO2"+e);
			e.printStackTrace();
		}
		return null;
	}
}