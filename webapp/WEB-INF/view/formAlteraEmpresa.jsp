<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "entrada" var = "linkEntradaServlet" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Perfil ${empresa.nome}</title>
	</head>
	<body>
		Usuário logado: ${usuario.login} <c:import url="logout-parcial.jsp"/>
		<br>
		<form action = "${linkEntradaServlet}" method = "post">
			<h3>Perfil ${empresa.nome}:</h3>
				
			Nome da empresa: <input type="text" name="nome" value="${empresa.nome}">
			<br>
			<br>
			Data de criação: <input type="text" name="data" 
			value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd.mm.yyyy"/>"/>
			<br>
			<br>
			<input type="hidden" name="id" value="${empresa.id}">
			<input type="hidden" name="acao" value="AlteraEmpresa">
			<input type="submit" value="Enviar">
		</form>
	</body>
</html>