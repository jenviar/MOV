package Gestion;

import java.sql.*;
import Basededatos.LibreriaJDBC;

public class Usuarios {
	private String Nombre_usuario;
	private int Edad;
	private String Estilo;
	private String Localizacion;
	private Date Disponibilidad;
	private String Contacto;
	
	public Usuarios(String nombre, int Edad, String Estilo, String localizacion, Date disponibilidad, String contacto) {
		
		this.Nombre_usuario = nombre;
		this.Edad = Edad;
		this.Estilo = Estilo;
		this.Localizacion = localizacion;
		this.Disponibilidad = disponibilidad;
		this.Contacto = contacto;
	}
	public String getNombre() {
		return Nombre_usuario;
	}
	public void setNombre(String nombre) {
		Nombre_usuario = nombre;
	}
	public int getEdad() {
		return Edad;
	}
	public void setEdad(int edad) {
		this.Edad = edad;
	}
	public String getRol() {
		return Estilo;
	}
	public void setRol(String rol) {
		Estilo = rol;
	}
	private String getLocalizacion() {
		return Localizacion;
	}
	public void setLocalizacion(String localizacion) {
		Localizacion = localizacion;
	}
	public Date getDisponibilidad() {
		return Disponibilidad;
	}
	public void setDisponibilidad(Date disponibilidad) {
		Disponibilidad = disponibilidad;
	}
	public String getContacto() {
		return Contacto;
	}
	public void setContacto(String contacto) {
		Contacto = contacto;
	}
	
	}
