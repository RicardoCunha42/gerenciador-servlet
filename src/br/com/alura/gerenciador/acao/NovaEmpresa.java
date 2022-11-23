package br.com.alura.gerenciador.acao;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

public class NovaEmpresa implements Acao {
	public String executa (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Cadastrando nova empresa");
		
		String nomeEmpresa = request.getParameter("nome");
		String dataTexto = request.getParameter("data");
		
		Date dataAbertura = null;
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("dd.mm.yyyy");
			dataAbertura = sdf.parse(dataTexto);
			
		} catch (ParseException e) {
			throw new ServletException(e);
	
		}
		
		Banco banco = new Banco();
		Empresa empresa = new Empresa ();
		empresa.setNome(nomeEmpresa);
		empresa.setDataAbertura(dataAbertura);
		banco.adiciona(empresa);
		
		return "redirect:entrada?acao=ListaEmpresas";
	}
}
