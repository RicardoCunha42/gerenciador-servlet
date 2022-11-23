package br.com.alura.gerenciador.modelo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class Banco {
	
	private static Collection<Empresa> lista = new ArrayList<>();
	private static Collection<Usuario> usuarios = new ArrayList<>();
	private static Integer chaveSerial = 1;
	
	static {
		Empresa pym = new Empresa ();
		pym.setNome("Pym Tech");
		pym.setId(chaveSerial++);
		
		Empresa stark = new Empresa ();
		stark.setNome("Stark Industries");
		stark.setId(chaveSerial++);
		
		Banco.lista.add(pym);
		Banco.lista.add(stark);
		
		Usuario hank = new Usuario();
		hank.setLogin("HankPym");
		hank.setSenha("janet");
		
		Usuario tony = new Usuario();
		tony.setLogin("TonyStark");
		tony.setSenha("hottestavenger");
		
		usuarios.add(hank);
		usuarios.add(tony);
	}
		
	public Collection<Empresa> getEmpresas (){
		return Banco.lista;
		
	}
	
	public void adiciona (Empresa empresa) {
		empresa.setId(chaveSerial++);
		Banco.lista.add(empresa);
	}
	
	public void remove (Integer id) {
		Iterator<Empresa> it = Banco.lista.iterator();
		
		while(it.hasNext()) {
			 Empresa emp = (Empresa) it.next();
			 if (emp.getId() == id) {
				 it.remove();
			 }
		}
	}

	public Empresa buscaEmpresaPelaId (Integer id) {
		for (Empresa empresa : Banco.lista) {
			if (id == empresa.getId()) {
				return empresa;
			}
		}
		return null;
	}

	public Usuario existeUsuario(String login, String senha) {
		for (Usuario usuario : usuarios) {
			if (usuario.ehIgual(login, senha)) {
				return usuario;
			} 
		}
		return null;
	}
}
