<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<%@ page import="Gestion.*" %>
<%@ page import="Basededatos.LibreriaJDBC" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bailar!</title>
<LINK REL=StyleSheet HREF="estilo_web.css" TYPE="text/css" MEDIA=screen>
</head>
<body>
<h1 class="usuarios">USUARIOS DISPONIBLES</h1>
	<table border="1">
		<%
			Connection con=LibreriaJDBC.conectarMysql();
			
			String sql="select Nombre_usuario,contacto,estilo,edad,localizacion from usuario order by disponibilidad";
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);

			while(rs.next())
			out.println("<tr><td>"+rs.getString("nombre_usuario")+"</td><td>"+rs.getString("edad")
			+"</td><td>"+rs.getString("estilo")+"</td><td>"+rs.getString("contacto")+"</td><td>"+rs.getString("localizacion"));
			con.close();
		%>
		
	</table>
	<ul><li><a class="boton" href="index.html">Inicio</a></li></ul>
</body>
</html>