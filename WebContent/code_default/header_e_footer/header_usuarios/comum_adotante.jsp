<li id="fat-menu" class="dropdown">
    <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown"><%= session.getValue("primeiro_nome") %> <b class="caret"></b></a>
    <ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
        <li><a tabindex="-1" href="<%= linkMeusDados %>">Meus Dados</a></li>
        <li class="divider"></li>
        <li><a tabindex="-1" href="<%= linkLogout %>">Sair</a></li>
    </ul>
</li>