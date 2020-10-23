package Gestion;

import java.util.ArrayList;
import java.util.Collections;
import java.sql.*; 
import Basededatos.LibreriaJDBC;

public class Estilos {
	private String Nombre_estilo;
	private String Descripcion;
	
	public Estilos(String Nombre_estilo, String Descripcion) {
		this.Nombre_estilo = Nombre_estilo;
		this.Descripcion = Descripcion;
	}
	public String getNombre_estilo() {
		return Nombre_estilo;
	}
	public void setNombre_estilo(String Nombre_estilo) {
		this.Nombre_estilo = Nombre_estilo;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String Descripcion) {
		this.Descripcion = Descripcion;
	}
	
	public String manipularEstilos(String operacion) {

		Connection c=LibreriaJDBC.conectarMysql();
		PreparedStatement st;
		
		try {
			if(operacion.equals("Insertar"))
					st=c.prepareStatement("insert into estilos (Nombre_estilo,Descripcion) values (?,?)");
			else if(operacion.equals("Modificar"))
				st=c.prepareStatement("update estilos set Nombre_estilo=?, Descripcion=? where estilos=?");
			else
				st=c.prepareStatement("delete from estilos where estilos=?");
				
			st.setString(1, Nombre_estilo);
			if(!operacion.equals("Borrar")){
				st.setString(2, Descripcion);
				if(operacion.equals("Modificar"))
					st.setString(3, Nombre_estilo);			
			}

			int filas=st.executeUpdate();
			
			if(filas>0)
				return "La operación "+operacion+" se ha realizado correctamente";
			else
				return "La operación "+operacion+" ha tenido algún error";		
	
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			return "Error la operación ha fallado "+e;
			//e.printStackTrace();
		}
	}
}
