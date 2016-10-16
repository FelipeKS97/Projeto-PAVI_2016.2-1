package pavi.melhoramigo.dao;

import java.util.ArrayList;

import pavi.melhoramigo.vo.UsuarioVO;

public class UsuarioDAO {
	public void criar (UsuarioVO usuario) {
		
	}
	
	public UsuarioVO buscaUsuario (String email) {		
		for(UsuarioVO i : this.getLista()) {
			if (i.getEmail().equals(email)) {
				return i;
			}
		}
		
		return null;
	}
	
	public ArrayList<UsuarioVO> getLista() {
		  UsuarioVO usuario1 = new UsuarioVO();
		  usuario1.setEmail("usuario1@pavi.com");
		  usuario1.setSenha("1234qwer");
		  usuario1.setNome("Zé 1");
		  usuario1.setNivelUsuario(0);
		  usuario1.setStatus_ban(0);
		  
		  UsuarioVO usuario2 = new UsuarioVO();
		  usuario2.setEmail("usuario2@pavi.com");
		  usuario2.setSenha("1234qwer");
		  usuario2.setNome("Zé 2");
		  usuario2.setNivelUsuario(0);
		  usuario2.setStatus_ban(0);

		  UsuarioVO usuario3 = new UsuarioVO();
		  usuario3.setEmail("usuario3@pavi.com");
		  usuario3.setSenha("1234qwer");
		  usuario3.setNome("Zé 3");
		  usuario3.setNivelUsuario(0);
		  usuario3.setStatus_ban(0);

		  ArrayList<UsuarioVO> listaUsuarios = new ArrayList<UsuarioVO>();
		  listaUsuarios.add(usuario1);
		  listaUsuarios.add(usuario2);
		  listaUsuarios.add(usuario3);

		  return listaUsuarios;
	}
}
