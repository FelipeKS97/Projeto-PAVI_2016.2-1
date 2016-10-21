package pavi.melhoramigo.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pavi.melhoramigo.bo.LoginUsuarioBO;

@WebServlet(name = "logar_usuario", urlPatterns = { "/logarusuario", "/logar" })
public class LogarUsuario extends ServletBase implements Servlet {
	private static final long serialVersionUID = 1L;

	private LoginUsuarioBO login = new LoginUsuarioBO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Apenas é usado o método POST
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		String senha = request.getParameter("senha");

		if (!login.verificaCadastro(this.getConexao(), email)) {
			out.println("<script>");
			out.println("alert('Este endereço de email não está cadastrado!');");
			out.println("history.back();");
			out.println("</script>");
		} else if (!login.validaSenha(senha)) {
			out.println("<script>");
			out.println("alert('A senha está INCORRETA!');");
			out.println("history.back();");
			out.println("</script>");
		} else if (login.isBan()) {
			out.println("<script>");
			out.println("alert('Este usuário encontra-se BANIDO por tempo indeterminado!');");
			out.println("history.back();");
			out.println("</script>");
		} else {
			request.getSession().setAttribute("email_usuario", login.getUsuarioParaLogin().getEmail());
			request.getSession().setAttribute("id_usuario", login.getUsuarioParaLogin().getId_usuario());
			request.getSession().setAttribute("nome_usuario", login.getUsuarioParaLogin().getNome());
			request.getSession().setAttribute("nivel_usuario", login.getUsuarioParaLogin().getNivelUsuario());
			
			response.sendRedirect("index.jsp");
		}
	}

}
