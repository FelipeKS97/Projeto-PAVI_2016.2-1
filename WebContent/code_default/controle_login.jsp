<%@ page
	import="java.util.*,
			pavi.melhoramigo.vo.UsuarioVO,
			pavi.melhoramigo.dao.UsuarioDAO,
			pavi.melhoramigo.bo.ControleLoginBO"%>
			
<%
if (null != session.getValue("email_usuario")) {
%>
	<%@ include file="conexao_bd.jsp" %>
<%
	ControleLoginBO controle_login = new ControleLoginBO();
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	UsuarioVO usuarioVO;
	
	usuarioVO = usuarioDAO.buscaUsuario(conexao, (String)session.getValue("email_usuario"));
	
	session.putValue("email_usuario", usuarioVO.getEmail());
	session.putValue("id_usuario", usuarioVO.getId_usuario());
	session.putValue("nome_usuario", usuarioVO.getNome());
	session.putValue("nivel_usuario", usuarioVO.getNivelUsuario());
	
	controle_login.setUsuario_atual(usuarioVO);
	
	session.putValue("primeiro_nome", controle_login.getPrimeiroNome_usuario());
}
%>