package pavi.melhoramigo.servlets;

import java.sql.Connection;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import pavi.melhoramigo.dao.conexao.ConexaoMySQL;

public abstract class ServletBase extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private ConexaoMySQL mysql = new ConexaoMySQL();
	private Connection conexao;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		this.conexao = mysql.getConexao("jdbc:mysql", "localhost:3306", "melhor_amigo", "root", "");
	}
	
	public void destroy() {
		mysql.fecharConexao();
	}
	
	public Connection getConexao() {
		return conexao;
	}
}
