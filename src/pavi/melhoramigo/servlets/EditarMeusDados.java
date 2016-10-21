package pavi.melhoramigo.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pavi.melhoramigo.bo.CadastroUsuarioBO;
import pavi.melhoramigo.dao.UsuarioDAO;
import pavi.melhoramigo.vo.EnderecoVO;
import pavi.melhoramigo.vo.UsuarioVO;

@WebServlet(name = "editar_meus_dados", urlPatterns = "/editarmeusdados")
public class EditarMeusDados extends ServletBase {
	private static final long serialVersionUID = 1L;

	private CadastroUsuarioBO recadastro = new CadastroUsuarioBO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Apenas é usado o método POST
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		int id_usuario = Integer.parseInt(request.getParameter("id_usuario"));
		String nome = request.getParameter("nome");
		String idade = request.getParameter("idade");
		String telefone = request.getParameter("telefone");
		String cep = request.getParameter("cep");
		String rua = request.getParameter("rua");
		String ncasa = request.getParameter("ncasa");
		String bairro = request.getParameter("bairro");
		String complemento = request.getParameter("complemento");
		String cidade = request.getParameter("cidade");
		String estado = request.getParameter("estado");

		 
		// Criar o Update no EnderecoDAO
		

		/*
		 * Exemplo de Update public void updateSenha(Connection conexao, String
		 * login, String novaSenha) throws SQLException{ String sql =
		 * "update usuario set senha = '" + novaSenha + "' where login='" +
		 * login + "'"; try (PreparedStatement stmt =
		 * conexao.prepareStatement(sql)) { stmt.executeUpdate(); } catch
		 * (SQLException e) { throw new SQLException("Erro: "+e.getMessage()); }
		 * }
		 */

		if (recadastro.verificaIdade(idade)) {
				if (recadastro.isCEP(cep) || cep.length() == 9) {

					cep = recadastro.formataCEP(cep);

					UsuarioVO novoUsuario = new UsuarioVO();
					EnderecoVO enderecoUsuario = new EnderecoVO();

					novoUsuario.setNome(nome);
					novoUsuario.setIdade(Integer.parseInt(idade));
					novoUsuario.setTelefone(telefone);
					novoUsuario.setId_usuario(id_usuario);

					enderecoUsuario.setCep(cep);
					enderecoUsuario.setRua(rua);
					enderecoUsuario.setBairro(bairro);
					enderecoUsuario.setComplemento(complemento);
					enderecoUsuario.setCidade(cidade);
					enderecoUsuario.setEstado(estado);
					enderecoUsuario.setnCasa(ncasa);
					novoUsuario.setEndereco(enderecoUsuario);

					UsuarioDAO usuarioDAO = new UsuarioDAO();

					try {
						usuarioDAO.updateUsuario(this.getConexao(), novoUsuario);
					} catch (SQLException e) {
						out.println("<script>");
						out.println("alert('Erro ao atualizar os dados do usuário: " + e.getMessage() + "');");
						out.println("history.back();");
						out.println("</script>");
					}

					response.sendRedirect("paginas/meus_dados.jsp?func=edit");

				} else {
					out.println("<script>");
					out.println("alert('Este CEP está incorreto!');");
					out.println("history.back();");
					out.println("</script>");
				}
		} else {
			out.println("<script>");
			out.println("alert('Idade inválida, você precisa ter mais de 18 anos!');");
			out.println("history.back();");
			out.println("</script>");
		}

		
	} 

}
