<%@ include file="../code_default/conexao_bd.jsp" %>

<%@ page
	import="java.util.*,
			pavi.melhoramigo.bo.ControleLoginBO,
			pavi.melhoramigo.bo.LoginUsuarioBO"%>
			
<%
String email = request.getParameter("email");
String senha = request.getParameter("senha");

LoginUsuarioBO login = new LoginUsuarioBO();

if (!login.verificaCadastro(conexao, email)) {
%>
	<script>
		alert('Este endereço de email não está cadastrado!');
		history.back();
    </script>
<%
} else if (!login.validaSenha(senha)) {
%>
	<script>
		alert('A senha está INCORRETA!');
		history.back();
    </script>
<%	
} else if (login.isBan()) {
%>
	<script>
		alert('Este usuário encontra-se BANIDO por tempo indeterminado!');
		history.back();
    </script>
<%	
} else {
	ControleLoginBO controle_login = new ControleLoginBO();
	
	session.putValue("email_usuario", login.getUsuarioParaLogin().getEmail());
	session.putValue("id_usuario", login.getUsuarioParaLogin().getId_usuario());
	session.putValue("nome_usuario", login.getUsuarioParaLogin().getNome());
	session.putValue("nivel_usuario", login.getUsuarioParaLogin().getNivelUsuario());
	
	controle_login.setUsuario_atual(login.getUsuarioParaLogin());
	
	session.putValue("primeiro_nome", controle_login.getPrimeiroNome_usuario());
	
	response.sendRedirect("../index.jsp");
}
%>