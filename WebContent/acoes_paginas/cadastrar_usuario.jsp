<%@ include file="../code_default/conexao_bd.jsp" %>

<%@ page
	import="java.util.*,
			pavi.melhoramigo.vo.UsuarioVO,
			pavi.melhoramigo.vo.EnderecoVO,
			pavi.melhoramigo.dao.UsuarioDAO,
			pavi.melhoramigo.bo.CadastroUsuarioBO"%>

<%
	String email = request.getParameter("email");
	String senha1 = request.getParameter("senha1");
	String senha2 = request.getParameter("senha2");
	String nome = request.getParameter("nome");
	String cpf = request.getParameter("cpf");
	String idade = request.getParameter("idade");
	String telefone = request.getParameter("telefone");

	String cep = request.getParameter("cep");
	String rua = request.getParameter("rua");
	String nCasa = request.getParameter("ncasa");
	String bairro = request.getParameter("bairro");
	String complemento = request.getParameter("complemento");
	String cidade = request.getParameter("cidade");
	String estado = request.getParameter("estado");

	CadastroUsuarioBO cadastro = new CadastroUsuarioBO();
	
	if (cadastro.isCPF(cpf)){
		if (cadastro.verificaIdade(idade)) {
			if (cadastro.isCEP(cep)) {
				if (cadastro.verificaEmail(conexao, email)) {
					if (cadastro.isSenha(senha1)) {
						if (cadastro.verificaConfirmaSenha(senha1, senha2)) {
							
							cpf = cadastro.formataCPF(cpf);
							cep = cadastro.formataCEP(cep);
							
							UsuarioVO novoUsuario = new UsuarioVO();
							EnderecoVO enderecoUsuario = new EnderecoVO();

							novoUsuario.setNome(nome);
							novoUsuario.setEmail(email);
							novoUsuario.setSenha(senha1);
							novoUsuario.setCpf(cpf);
							novoUsuario.setIdade(Integer.parseInt(idade));
							novoUsuario.setTelefone(telefone);

							enderecoUsuario.setCep(cep);
							enderecoUsuario.setRua(rua);
							enderecoUsuario.setnCasa(nCasa);
							enderecoUsuario.setBairro(bairro);
							enderecoUsuario.setComplemento(complemento);
							enderecoUsuario.setCidade(cidade);
							enderecoUsuario.setEstado(estado);

							novoUsuario.setEndereco(enderecoUsuario);

							UsuarioDAO usuarioDAO = new UsuarioDAO();

							usuarioDAO.criar(conexao, novoUsuario);
							
							response.sendRedirect("../paginas/login_usuario.jsp?cadastro=ok");
							
						} else {
						%>
							<script>
							alert('A confirmação de senha está diferente da senha!');
							history.back();
					    	</script>		
						<%
						}
					} else {
					%>
						<script>
						alert('A senha deve conter no mínimo 6 caracteres!');
						history.back();
				    	</script>		
					<%
					}
				} else {
				%>
					<script>
					alert('Este endereço de email já está sendo usado!');
					history.back();
			    	</script>		
				<%	
				}
			} else {
			%>
				<script>
				alert('Este CEP está incorreto!');
				history.back();
		    	</script>		
			<%
			}
		} else {
		%>
			<script>
			alert('Idade inválida, você precisa ter mais de 18 anos!');
			history.back();
	    	</script>		
		<%
		}
	} else {
	%>
		<script>
		alert('Este número de CPF é inválido!');
		history.back();
    	</script>		
	<%
	} 
%>