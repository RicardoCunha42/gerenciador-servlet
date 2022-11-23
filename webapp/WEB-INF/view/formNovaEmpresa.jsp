<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "entrada" var = "linkEntradaServlet" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Usuário logado: ${usuario.login} <c:import url="logout-parcial.jsp"/>
		<br>
		<form action="${linkEntradaServlet}" method="post">
			<h3>Cadastre uma empresa:</h3>
			
			Nome da empresa: <input type="text" name="nome" placeholder="Digite aqui...">
			<br>
			<br>
			Data de criação: <input type="text" name="data" placeholder="dd.mm.yyyy">
			<br>
			<br>
			<input type="hidden"  name="acao" value="NovaEmpresa">
			<input type="submit" value="Enviar">
		</form>
	</body>
</html>