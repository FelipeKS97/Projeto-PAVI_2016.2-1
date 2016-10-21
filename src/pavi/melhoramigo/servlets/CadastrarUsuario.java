package pavi.melhoramigo.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pavi.melhoramigo.bo.CadastroUsuarioBO;
import pavi.melhoramigo.dao.UsuarioDAO;
import pavi.melhoramigo.vo.EnderecoVO;
import pavi.melhoramigo.vo.UsuarioVO;

@WebServlet(name = "cadastrar_usuario", urlPatterns = { "/cadastrarusuario", "/cadastrar" })
public class CadastrarUsuario extends ServletBase implements Servlet {
	private static final long serialVersionUID = 1L;

	private CadastroUsuarioBO cadastro = new CadastroUsuarioBO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Apenas é usado o método POST
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
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

		if (cadastro.isCPF(cpf)) {
			if (cadastro.verificaIdade(idade)) {
				if (cadastro.isTelefone(telefone))
					if (cadastro.isCEP(cep)) {
						if (cadastro.verificaEmail(this.getConexao(), email)) {
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
	
									try {
										usuarioDAO.criar(this.getConexao(), novoUsuario);
									} catch (SQLException e) {
										out.println("<script>");
										out.println("alert('Erro ao cadastrar o usuário: " + e.getMessage() + "');");
										out.println("history.back();");
										out.println("</script>");
									}
	
									response.sendRedirect("paginas/login_usuario.jsp?cadastro=ok");
	
								} else {
									out.println("<script>");
									out.println("alert('A confirmação de senha está diferente da senha!');");
									out.println("history.back();");
									out.println("</script>");
								}
							} else {
								out.println("<script>");
								out.println("alert('A senha deve conter no mínimo 6 caracteres!');");
								out.println("history.back();");
								out.println("</script>");
							}
						} else {
							out.println("<script>");
							out.println("alert('Este endereço de email já está sendo usado!');");
							out.println("history.back();");
							out.println("</script>");
						}
					} else {
						out.println("<script>");
						out.println("alert('Este CEP está incorreto!');");
						out.println("history.back();");
						out.println("</script>");
				} else {
					out.println("<script>");
					out.println("alert('Digite apenas números no telefone!');");
					out.println("history.back();");
					out.println("</script>");
				}
			} else {
				out.println("<script>");
				out.println("alert('Idade inválida, você precisa ter mais de 18 anos!');");
				out.println("history.back();");
				out.println("</script>");
			}
		} else {
			out.println("<script>");
			out.println("alert('Este número de CPF é inválido!');");
			out.println("history.back();");
			out.println("</script>");
		}
	}

}
