package pavi.melhoramigo.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pavi.melhoramigo.bo.CadastroUsuarioBO;

@WebServlet(name = "editar_meus_dados", urlPatterns = "/editarmeusdados")
public class EditarMeusDados extends ServletBase {
	private static final long serialVersionUID = 1L;
	
	private CadastroUsuarioBO recadastro = new CadastroUsuarioBO();
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//Apenas é usado o método POST
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String id_usuario = request.getParameter("id_usuario");
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
		
		//Criar o Update no UsuarioDAO ("update t_usuario set nome='" + nome + "', idade='" + idade + "', telefone='" + telefone + "' where id_usuario='" + id_usuario + "'")
		//Criar o Update no EnderecoDAO ("update t_endereco set cep='" + cep + "', rua='" + rua +"', ncasa='" + ncasa + "', bairro='" + bairro + "', complemento='" + complemento + "', cidade='" + cidade + "', estado='" + estado + "' where id_usuario='" + $id_usuario + "'")
		
		/* Exemplo de Update
		public void updateSenha(Connection conexao, String login, String novaSenha) throws SQLException{
			String sql = "update usuario set senha = '" + novaSenha + "' where login='" + login + "'";
			try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
				stmt.executeUpdate();
			} catch (SQLException e) {
				throw new SQLException("Erro: "+e.getMessage());
			}
		}
		*/
		
		//Parecido com CadastrarUsuario.java
		//Faz as checagens com os métodos de this.recadastro
		//Ao final dar redirect para "paginas/meus_dados.jsp?func=edit"
	}

}
