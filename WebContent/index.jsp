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
                <p><a href="index.jsp"><img id="logoPrincipal" alt="Logo-ONG" src="img/logo_melhor_amigo_BLUE.png"></a></p>
                <div class="navbar navbar-inverse navbar-static-top">
                    <div class="navbar-inner">
                        <ul class="nav">
                            <li><a href="index.jsp">In�cio</a></li>
                            <li><a href="#">C�es</a></li>
                            <li><a href="#">Ado��o</a></li>
                            <li><a href="#">Apadrinhamento</a></li>
                            <li><a href="#">Volunt�rios</a></li>
                            <li><a href="#">Doa��es</a></li>
                        </ul>
                        <ul class="nav pull-right">
                            <li><a href="paginas/login_usuario.jsp">Login</a></li>
                            <li><a href="paginas/cadastro_usuario.jsp">Cadastre-se</a></li>
                        </ul>
                    </div>
                </div>                   
            </header>

            <article>
                <div id="myCarousel" class="carousel slide">
                    <!-- Itens de carousel -->
                    <div class="carousel-inner">
                        <div class="active item">
                            <a href="#"><img src="img/imgs_site/img_2.jpg" alt="..."></a>
                            <div class="carousel-caption">
                                <a href="#">
                                    <h4>Conhe�a nossos c�ezinhos!</h4>
                                    <p>Aqui voc� pode conhecer todos os nossos amigos, pode tamb�m adot�-los ou apadrinh�-los!</p>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <a href="#"><img src="img/imgs_site/img_12.jpg" alt="..."></a>
                            <div class="carousel-caption">
                                <a href="#">
                                    <h4>Fa�a uma doa��o!</h4>
                                    <p>Ajude-nos a cuidar de nosso amigos!</p>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <a href="#"><img src="img/imgs_site/img_10.jpg" alt="..."></a>
                            <div class="carousel-caption">
                                <a href="#">
                                    <h4>Denuncie maus-tratos, isso � crime!</h4>
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
                    <p>A grandeza de uma na��o e seu progresso moral podem ser julgados pelo modo como seus animais s�o tratados.</p>
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
                                        <p class="center">D� um lar � um de nossos c�ezinhos e ganhe um melhor amigo!</p>
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
                                        <p class="center">Apadrinhe um de nossos c�ezinhos e seja nosso parceiro!</p>
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
                                        <p class="center">Ajude-nos!<br/>Qualquer valor ser� bem vindo!</p>
                                    </div>                           
                                </div>
                            </a>
                        </li>
                    </ul>
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
        <script src="bootstrap/js/bootstrap.js"></script>
    </body>
</html>