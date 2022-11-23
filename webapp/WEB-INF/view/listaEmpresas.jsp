<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista de empresas</title>
	</head>
	<body>
	
	Usuário logado: ${usuario.login} <c:import url="logout-parcial.jsp"/>
	
		<c:if test="${not empty nomeEmpresa}">
				Nova empresa ${nomeEmpresa} cadastrada com sucesso!
				<br>
		</c:if>
		
		<h3>Lista de empresas:</h3>
	
		<ul>
		
			<c:forEach items="${ empresas }" var="empresa">
			
				<li>${ empresa.nome } - <fmt:formatDate value="${ empresa.dataAbertura }" pattern = "dd.mm.yyyy"/>
					<a href = "/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">Remover</a>
					<a href = "/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">Editar</a>
				</li>
			
			</c:forEach>
		
		</ul>
	
	</body>
</html>