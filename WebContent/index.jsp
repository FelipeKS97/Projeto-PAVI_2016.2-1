<%@ include file="code_default/controle_login.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Melhor Amigo</title>

        <!-- Bootstrap -->
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">

        <link rel="stylesheet" type="text/css" href="css/layout_default.css" />
    </head>
    <body>
        <div class="container mycontainer">
            <header>
                <%
                String linkLogo = "img/logo_melhor_amigo_BLUE.png";
                
                String linkInicio = "index.jsp";
                String linkCaes = "#";
                String linkAdocao = "#";
                String linkApadrinhamento = "#";
                String linkDoacoes = "#";
                String linkVoluntarios = "#";
                String linkLogin = "paginas/login_usuario.jsp";
                String linkCadastro = "paginas/cadastro_usuario.jsp";
                String linkLogout = "deslogar";
                String linkMeusDados = "paginas/meus_dados.jsp";

                String linkControleCaes = "#";
                String linkPedidosAdocao = "#";
                String linkPedidosVoluntario = "#";
                String linkControleUsuarios = "#";

                String linkAreaPadrinho = "#";
                String linkAreaVoluntario = "#";
                %>                   
                
                <%@ include file="code_default/header_e_footer/header.jsp" %>
            </header>

            <article>
                <div id="myCarousel" class="carousel slide">
                    <!-- Itens de carousel -->
                    <div class="carousel-inner">
                        <div class="active item">
                            <a href="#"><img src="img/imgs_site/img_2.jpg" alt="..."></a>
                            <div class="carousel-caption">
                                <a href="#">
                                    <h4>Conheça nossos cãezinhos!</h4>
                                    <p>Aqui você pode conhecer todos os nossos amigos, pode também adotá-los ou apadrinhá-los!</p>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <a href="#"><img src="img/imgs_site/img_12.jpg" alt="..."></a>
                            <div class="carousel-caption">
                                <a href="#">
                                    <h4>Faça uma doação!</h4>
                                    <p>Ajude-nos a cuidar de nosso amigos!</p>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <a href="#"><img src="img/imgs_site/img_10.jpg" alt="..."></a>
                            <div class="carousel-caption">
                                <a href="#">
                                    <h4>Denuncie maus-tratos, isso é crime!</h4>
                                    <p>Saiba mais aqui!</p>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Navegador do carousel -->
                    <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                    <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
                </div>

                <blockquote>
                    <p>A grandeza de uma nação e seu progresso moral podem ser julgados pelo modo como seus animais são tratados.</p>
                    <small><cite title="Source Title">Mahatma Gandhi</cite></small>
                </blockquote>

                <div class="row-fluid">
                    <ul class="thumbnails">
                        <li class="span4">
                            <a href="#">
                                <div class="thumbnail mythumbnail">
                                    <img src="img/imgs_site/img_8.jpg" alt="">
                                    <div class="caption">
                                        <h3 class="center">Adote</h3>
                                        <p class="center">Dê um lar à um de nossos cãezinhos e ganhe um melhor amigo!</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="span4">
                            <a href="#">
                                <div class="thumbnail mythumbnail">
                                    <img src="img/imgs_site/img_1.jpg" alt="">
                                    <div class="caption">
                                        <h3 class="center">Apadrinhe</h3>
                                        <p class="center">Apadrinhe um de nossos cãezinhos e seja nosso parceiro!</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="span4">
                            <a href="#">
                                <div class="thumbnail mythumbnail">
                                    <img src="img/imgs_site/img_9.jpg" alt="">
                                    <div class="caption">
                                        <h3 class="center">Doe</h3>
                                        <p class="center">Ajude-nos!<br/>Qualquer valor será bem vindo!</p>
                                    </div>                           
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </article>

            <footer>
            	<%
                String linkSobre = "#";
            	String linkLocalizacao = "#";
                String linkDenuncie = "#";
                %>
                
                <%@ include file="code_default/header_e_footer/footer.jsp" %>
            </footer>
        </div>

        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
    </body>
</html>