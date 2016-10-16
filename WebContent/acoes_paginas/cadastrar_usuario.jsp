<%@ page
	import="java.util.*,
			pavi.melhoramigo.vo.UsuarioVO,
			pavi.melhoramigo.vo.EnderecoVO,
			pavi.melhoramigo.dao.UsuarioDAO"%>

<%
	String email = request.getParameter("email");
	String senha = request.getParameter("senha1");
	String nome = request.getParameter("nome");
	String cpf = request.getParameter("cpf");
	String idade = request.getParameter("idade");
	String telefone = request.getParameter("telefone");
	int nivelUsuario = 0;
	int status_ban = 0;

	String cep = request.getParameter("cep");
	String rua = request.getParameter("rua");
	String nCasa = request.getParameter("ncasa");
	String bairro = request.getParameter("bairro");
	String complemento = request.getParameter("complemento");
	String cidade = request.getParameter("cidade");
	String estado = request.getParameter("estado");

	UsuarioVO novoUsuario = new UsuarioVO();
	EnderecoVO enderecoUsuario = new EnderecoVO();

	novoUsuario.setNome(nome);
	novoUsuario.setEmail(email);
	novoUsuario.setSenha(senha);
	novoUsuario.setCpf(cpf);
	novoUsuario.setIdade(idade);
	novoUsuario.setTelefone(telefone);
	novoUsuario.setNivelUsuario(nivelUsuario);
	novoUsuario.setStatus_ban(status_ban);

	enderecoUsuario.setCep(cep);
	enderecoUsuario.setRua(rua);
	enderecoUsuario.setnCasa(nCasa);
	enderecoUsuario.setBairro(bairro);
	enderecoUsuario.setComplemento(complemento);
	enderecoUsuario.setCidade(cidade);
	enderecoUsuario.setEstado(estado);

	novoUsuario.setEndereco(enderecoUsuario);

	UsuarioDAO usuarioDAO = new UsuarioDAO();

	usuarioDAO.criar(novoUsuario);
%>