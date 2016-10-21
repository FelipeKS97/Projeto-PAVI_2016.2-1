<jsp:useBean id="controle_login" class="pavi.melhoramigo.bo.ControleLoginBO"/>
<jsp:useBean id="usuarioDAO" class="pavi.melhoramigo.dao.UsuarioDAO"/>
<jsp:useBean id="usuarioVO" class="pavi.melhoramigo.vo.UsuarioVO"/>
		
<%
if (null != session.getAttribute("email_usuario")) {
%>
	<%@ include file="conexao_bd.jsp" %>
<%
	controle_login.setUsuario_atual(usuarioDAO.buscaUsuario(conexao, (String)session.getAttribute("email_usuario")));
	
	session.setAttribute("email_usuario", controle_login.getUsuario_atual().getEmail());
	session.setAttribute("id_usuario", controle_login.getUsuario_atual().getId_usuario());
	session.setAttribute("nome_usuario", controle_login.getUsuario_atual().getNome());
	session.setAttribute("nivel_usuario", controle_login.getUsuario_atual().getNivelUsuario());
}
%>