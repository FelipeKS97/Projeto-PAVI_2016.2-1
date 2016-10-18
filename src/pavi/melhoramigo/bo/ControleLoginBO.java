package pavi.melhoramigo.bo;

import pavi.melhoramigo.vo.UsuarioVO;

public class ControleLoginBO {
	UsuarioVO usuario_atual = new UsuarioVO();
	
	public UsuarioVO getUsuario_atual() {
		return usuario_atual;
	}

	public void setUsuario_atual(UsuarioVO usuario_atual) {
		this.usuario_atual = usuario_atual;
	}

	public String getPrimeiroNome_usuario () {
		String nomeCompleto = this.usuario_atual.getNome();
		String primeiroNome = "";
		
		for( int i = 0; i < nomeCompleto.length(); i++)    
		{    
		 if(nomeCompleto.charAt(i) !=' ')   
			 primeiroNome = primeiroNome + nomeCompleto.charAt(i);   
		 else  
		      break;    
		}
		
		return primeiroNome;
	}
}
