<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<%@ page import="Gestion.*" %>
<%@ page import="Basededatos.LibreriaJDBC" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro Usuario</title>
<LINK REL=StyleSheet HREF="estilo_web.css" TYPE="text/css" MEDIA=screen>
</head>
<body>

	<%
	
	String p_Nombre_usuario=request.getParameter("Nombre_usuario");
	int p_Edad=Integer.parseInt(request.getParameter("Edad"));
	String p_Estilo=request.getParameter("Estilo");
	String p_Localizacion=request.getParameter("Localizacion");
	String p_Disponibilidad=request.getParameter("Disponibilidad");
	String p_Contacto=request.getParameter("Contacto");
	String p_operacion=request.getParameter("operacion");
		
	
		
		String bd=request.getParameter("bbdd");
		
		Connection con=LibreriaJDBC.conectarMysql();
		
		String sql="insert into usuario (Nombre_usuario,Edad,Estilo,Localizacion,Disponibilidad,Contacto) values (?,?,?,?,?,?)";
		
		PreparedStatement st=con.prepareStatement(sql);
		
		st.setString(1,p_Nombre_usuario);
		st.setInt(2,p_Edad);
		st.setString(3,p_Estilo);
		st.setString(4,p_Localizacion);
		st.setString(5,p_Disponibilidad);
		st.setString(6,p_Contacto);
		
		
		int filaAfectadas=st.executeUpdate();
		
		if(filaAfectadas>0)
			out.println("<p class='registro'>Registrado correctamente</p>");
		else
			out.println("Error, no se ha realizado el registro");
	%>
	
	
</body>
</html>