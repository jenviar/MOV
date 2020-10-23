package Gestion;

public class Bailar {
	private String Nombre_usuario;
	private String Nombre_estilo;
	private String Fecha;
	public Bailar(String nombre_usuario, String nombre_estilo, String fecha) {
		super();
		Nombre_usuario = nombre_usuario;
		Nombre_estilo = nombre_estilo;
		Fecha = fecha;
	}
	public String getNombre_usuario() {
		return Nombre_usuario;
	}
	public void setNombre_usuario(String nombre_usuario) {
		Nombre_usuario = nombre_usuario;
	}
	public String getNombre_estilo() {
		return Nombre_estilo;
	}
	public void setNombre_estilo(String nombre_estilo) {
		Nombre_estilo = nombre_estilo;
	}
	public String getFecha() {
		return Fecha;
	}
	public void setFecha(String fecha) {
		Fecha = fecha;
	}
	
}