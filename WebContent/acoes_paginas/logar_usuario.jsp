<%@ page
	import="java.util.*,
			pavi.melhoramigo.vo.UsuarioVO,
			pavi.melhoramigo.vo.EnderecoVO,
			pavi.melhoramigo.dao.UsuarioDAO"%>
			
<%
String email = request.getParameter("email");
String senha = request.getParameter("senha");

UsuarioDAO usuarioDAO = new UsuarioDAO();
UsuarioVO usuarioVO;

usuarioVO = usuarioDAO.buscaUsuario(email);

if (usuarioVO == null) {
%>
	<script>
		alert('Este endereço de email não está cadastrado!');
		history.back();
    </script>
<%
} else if (!usuarioVO.getSenha().equals(senha)) {
%>
	<script>
		alert('A senha está INCORRETA!');
		history.back();
    </script>
<%	
} else if (usuarioVO.getStatus_ban() == 1) {
%>
	<script>
		alert('Este usuário encontra-se BANIDO por tempo indeterminado!');
		history.back();
    </script>
<%	
} else {
	session.putValue("email_usuario", usuarioVO.getEmail());
	session.putValue("id_usuario", usuarioVO.getId_usuario());
	session.putValue("nome_usuario", usuarioVO.getNome());
	session.putValue("nivel_usuario", usuarioVO.getNivelUsuario());
	session.putValue("status_login", true);
	
	response.sendRedirect("../index.jsp");
}
%>