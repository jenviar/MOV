<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<%@ page import="Gestion.*" %>
<%@ page import="Basededatos.LibreriaJDBC" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<LINK REL=StyleSheet HREF="estilo_web.css" TYPE="text/css" MEDIA=screen>
</head>
<body>

	<h1 class="usuarios">USUARIOS DISPONIBLES</h1>
	<table border="1">
		<%
		String estilo=request.getParameter("estilo");
		String localizacion=request.getParameter("localizacion");
		String disponibilidad=request.getParameter("disponibilidad");
		Connection con=LibreriaJDBC.conectarMysql();
			
			String sql="select * from usuario where 1=1 ";
			if (!estilo.equals(""))
				sql=sql+" and estilo=?";
			if (!disponibilidad.equals(""))
				sql=sql+" and disponibilidad=?";
			if (!localizacion.equals(""))
				sql=sql+" and localizacion=?";
			
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, estilo);
			st.setString(1, disponibilidad);
			st.setString(1, localizacion);
			ResultSet rs=st.executeQuery();

			while(rs.next())
			out.println("<tr><td>"+rs.getString("nombre_usuario")+"</td><td>"+rs.getString("edad")
			+"</td><td>"+rs.getString("estilo")+"</td><td>"+rs.getString("contacto")+"</td><td>"+rs.getString("localizacion"));
			con.close();
		%>
		
		
	</table>
	<ul><li><a class="boton" href="index.html">Inicio</a></li></ul>
	
</body>
</html>