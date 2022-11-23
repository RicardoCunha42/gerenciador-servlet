<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "entrada" var = "linkEntradaServlet" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="${linkEntradaServlet}" method="post">
			<h3>Acesso:</h3>
			
			Login: <input type="text" name="login" placeholder="Digite aqui...">
			<br>
			<br>
			Senha: <input type="password" name="senha" placeholder="Digite aqui...">
			<br>
			<br>
			<input type="hidden"  name="acao" value="Login">
			<input type="submit" value="Enviar">
		</form>
	</body>
</html>