<li id="fat-menu" class="dropdown">
    <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">${controle_login.getPrimeiroNome_usuario()} <b class="caret"></b></a>
    <ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
        <li><a tabindex="-1" href="<%= linkMeusDados %>">Meus Dados</a></li>
        <li class="divider"></li>
        <li><a tabindex="-1" href="<%= linkPedidosAdocao %>">Pedidos de Adoção</a></li>
        <li><a tabindex="-1" href="<%= linkPedidosVoluntario %>">Pedidos p/voluntariar</a></li>
        <li class="divider"></li>
        <li><a tabindex="-1" href="<%= linkControleCaes %>">Controle de Cães</a></li>
        <li><a tabindex="-1" href="<%= linkControleUsuarios %>">Controle de Usuários</a></li>
        <li class="divider"></li>
        <li><a tabindex="-1" href="<%= linkLogout %>">Sair</a></li>
    </ul>
</li>