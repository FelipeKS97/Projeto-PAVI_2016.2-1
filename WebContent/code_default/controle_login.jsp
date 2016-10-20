<jsp:useBean id="controle_login" class="pavi.melhoramigo.bo.ControleLoginBO"/>
<jsp:useBean id="usuarioDAO" class="pavi.melhoramigo.dao.UsuarioDAO"/>
<jsp:useBean id="usuarioVO" class="pavi.melhoramigo.vo.UsuarioVO"/>
		
<%
if (null != session.getAttribute("email_usuario")) {
%>
	<%@ include file="conexao_bd.jsp" %>
<%
	usuarioVO = usuarioDAO.buscaUsuario(conexao, (String)session.getAttribute("email_usuario"));
	
	session.setAttribute("email_usuario", usuarioVO.getEmail());
	session.setAttribute("id_usuario", usuarioVO.getId_usuario());
	session.setAttribute("nome_usuario", usuarioVO.getNome());
	session.setAttribute("nivel_usuario", usuarioVO.getNivelUsuario());
	
	controle_login.setUsuario_atual(usuarioVO);
}
%>