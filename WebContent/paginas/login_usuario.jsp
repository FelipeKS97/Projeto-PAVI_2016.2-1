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
                <p><a href="../index.jsp"><img id="logoPrincipal" alt="Logo-ONG" src="../img/logo_melhor_amigo_BLUE.png"></a></p>
                <div class="navbar navbar-inverse navbar-static-top">
                    <div class="navbar-inner">
                        <ul class="nav">
                            <li><a href="../index.jsp">In�cio</a></li>
                            <li><a href="#">C�es</a></li>
                            <li><a href="#">Ado��o</a></li>
                            <li><a href="#">Apadrinhamento</a></li>
                            <li><a href="#">Volunt�rios</a></li>
                            <li><a href="#">Doa��es</a></li>
                        </ul>
                        <ul class="nav pull-right">
                            <li><a href="login_usuario.jsp">Login</a></li>
                            <li><a href="cadastro_usuario.jsp">Cadastre-se</a></li>
                        </ul>
                    </div>
                </div>
            </header>

            <article>
                <div class="cabecalho center">
                    <h2>Login<br/><small>Seja bem-vindo! Fa�a o login abaixo.</small></h2>
                </div>

                <form action="#" method="post" id="formLogin" class="form-horizontal">
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
                    <p><a href="#">Esqueci a senha</a> | <a href="#" target="_BLANK">Cadastre-se</a></p>
                </div>
            </article>

            <footer>
                <div class="navbar navbar-inverse navbar-static-top">
                    <div class="navbar-inner">
                        <ul class="nav">
                            <li><a href="#">Sobre N�s</a></li>
                            <li><a href="#">Localiza��o</a></li>
                            <li><a href="#">Denuncie</a></li>
                        </ul>
                        <ul class="nav pull-right">
                            <li><a href="mailto:faleconosco@melhoramigo.com"><i class="icon-envelope icon-white"></i> faleconosco@melhoramigo.com</a></li>
                        </ul>
                    </div>
                </div>
            </footer>
        </div>

        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="../bootstrap/js/bootstrap.js"></script>
    </body>
</html>