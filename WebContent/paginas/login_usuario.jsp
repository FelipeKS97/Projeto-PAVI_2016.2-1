<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login | Melhor Amigo</title>
        
        <!-- Bootstrap -->
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">

        <link rel="stylesheet" type="text/css" href="../css/layout_default.css" />
        <link rel="stylesheet" type="text/css" href="../css/login_usuario.css">
    </head>
    <body>
        <div class="container mycontainer">
            <header>
               <%
                String linkLogo = "../img/logo_melhor_amigo_BLUE.png";
                
                String linkInicio = "../index.jsp";
                String linkCaes = "#";
                String linkAdocao = "#";
                String linkApadrinhamento = "#";
                String linkDoacoes = "#";
                String linkVoluntarios = "#";
                String linkLogin = "login_usuario.jsp";
                String linkCadastro = "cadastro_usuario.jsp";
                String linkLogout = "../deslogar";
                String linkMeusDados = "#";

                String linkControleCaes = "#";
                String linkPedidosAdocao = "#";
                String linkPedidosVoluntario = "#";
                String linkControleUsuarios = "#";

                String linkAreaPadrinho = "#";
                String linkAreaVoluntario = "#";
                
                if (null != session.getAttribute("email_usuario")) {
                	response.sendRedirect("../index.jsp");
                }
                %>                   
                
                <%@ include file="../code_default/header_e_footer/header.jsp" %>
            </header>

            <article>
            	<%
            	if (null != request.getParameter("cadastro")) {
            		String cadastro = request.getParameter("cadastro");
                    if (cadastro.equals("ok")) {
                %>
                	<div class='alert alert-success fade in'>
                        <button type='button' class='close' data-dismiss='alert'>×</button>
                        <strong>Parabéns!</strong> Seu cadastro foi criado com sucesso!
                    </div>
                <%
                    }
            	}
            	%>
           
                <div class="cabecalho center">
                    <h2>Login<br/><small>Seja bem-vindo! Faça o login abaixo.</small></h2>
                </div>

                <form action="../logar" method="post" id="formLogin" class="form-horizontal">
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">Email</label>
                            <div class="controls">
                                <input type="text" id="inputEmail" placeholder="Email" name="email" required>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Senha</label>
                            <div class="controls">
                                <input type="password" id="inputPassword" placeholder="Senha" name="senha" required>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn">Entrar</button>
                            </div>
                        </div>
                    </fieldset>
                </form>


                <div id="ajuda" class="center">
                    <p><a href="#">Esqueci a senha</a> | <a href="cadastro_usuario.jsp" target="_BLANK">Cadastre-se</a></p>
                </div>
            </article>

            <footer>
                <%
                String linkSobre = "#";
            	String linkLocalizacao = "#";
                String linkDenuncie = "#";
                %>
                
                <%@ include file="../code_default/header_e_footer/footer.jsp" %>
            </footer>
        </div>

        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="../bootstrap/js/bootstrap.js"></script>
    </body>
</html>