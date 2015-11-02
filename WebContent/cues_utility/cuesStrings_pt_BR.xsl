<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name='logout'>Fazer logoff</xsl:variable>
<xsl:variable name='about'>Sobre</xsl:variable>
<xsl:variable name='msgInvalidData'>Os dados fornecidos s&#x00e3;o inv&#x00e1;lidos.</xsl:variable>
<xsl:variable name='msgInvalidData.ipv4'>Um endere&#x00e7;o IPv4 v&#x00e1;lido consiste em quatro n&#x00fa;meros (0 a 255) separados por pontos, por exemplo: 123.0.255.3</xsl:variable>
<xsl:variable name='msgInvalidData.netmask'>Uma m&#x00e1;scara de rede v&#x00e1;lida consiste em quatro n&#x00fa;meros (0 a 255) separados por pontos, por exemplo: 123.0.255.3</xsl:variable>
<xsl:variable name='msgInvalidData.mac'>Um endere&#x00e7;o MAC v&#x00e1;lido &#x00e9; nn:nn:nn:nn:nn:nn onde 'n's s&#x00e3;o d&#x00ed;gitos (0 a 9) ou letras (A a F)</xsl:variable>
<xsl:variable name='msgInvalidData.ipv6'>Um endere&#x00e7;o IPv6 v&#x00e1;lido &#x00e9; igual a n:n:n:n:n:n:n:n, onde a letra 'n' representa d&#x00ed;gitos (0-9) ou letras (A-F)</xsl:variable>
<xsl:variable name='msgInvalidData.ipv6mask'>Dados inv&#x00e1;lidos inseridos</xsl:variable>
<xsl:variable name='msgInvalidData.time2'>A hora fornecida deve estar no intervalo de 1:00 a 12:59</xsl:variable>
<xsl:variable name='msgInvalidData.miltime2'>A hora fornecida deve estar no intervalo de 0:00 a 23:59</xsl:variable>
<xsl:variable name='msgNoncontiguousReorder'>S&#x00f3; &#x00e9; poss&#x00ed;vel reordenar linhas selecionadas que sejam cont&#x00ed;guas</xsl:variable>
<xsl:variable name='msgStepHasErrors'>A etapa do assistente cont&#x00e9;m um ou mais erros</xsl:variable>
<xsl:variable name='msgTabHasErrors'>Guia cont&#x00e9;m 1 ou mais erros</xsl:variable>
<xsl:variable name='rowsperpage'>Linhas por p&#x00e1;gina</xsl:variable>
<xsl:variable name='perpage'>por p&#x00e1;gina</xsl:variable>
<xsl:variable name='itemsperpage'>Itens por p&#x00e1;gina</xsl:variable>
<xsl:variable name='page'>P&#x00e1;gina</xsl:variable>
<xsl:variable name='of'>de</xsl:variable>
<xsl:variable name='go'>Ir</xsl:variable>
<xsl:variable name='setall'>Selecionar todos</xsl:variable>
<xsl:variable name='clearall'>Limpar tudo</xsl:variable>
<xsl:variable name='undoall'>Desfazer tudo</xsl:variable>
<xsl:variable name='sun'>Dom</xsl:variable>
<xsl:variable name='mon'>Seg</xsl:variable>
<xsl:variable name='tue'>Ter</xsl:variable>
<xsl:variable name='wed'>Qua</xsl:variable>
<xsl:variable name='thu'>Qui</xsl:variable>
<xsl:variable name='fri'>Sex</xsl:variable>
<xsl:variable name='sat'>S&#x00e1;b</xsl:variable>
<xsl:variable name='login'>Fazer login</xsl:variable>
<xsl:variable name='submit'>Enviar</xsl:variable>
<xsl:variable name='reset'>Redefinir</xsl:variable>
<xsl:variable name='filter'>Filtro</xsl:variable>
<xsl:variable name='matchif'>Corresponder se</xsl:variable>
<xsl:variable name='matchgo'>Ir</xsl:variable>
<xsl:variable name='matchclear'>Limpar filtro</xsl:variable>
<xsl:variable name='matchcontains'>Contiver</xsl:variable>
<xsl:variable name='matchnotcontain'>N&#x00e3;o contiver</xsl:variable>
<xsl:variable name='matchstartswith'>Come&#x00e7;ar com</xsl:variable>
<xsl:variable name='matchendswith'>Acabar com</xsl:variable>
<xsl:variable name='matchexactly'>For exatamente</xsl:variable>
<xsl:variable name='matchnotexactly'>N&#x00e3;o for</xsl:variable>
<xsl:variable name='matchempty'>Estiver vazio</xsl:variable>
<xsl:variable name='matchnotempty'>N&#x00e3;o estiver vazio</xsl:variable>
<xsl:variable name='matchistrue'>For verdadeiro</xsl:variable>
<xsl:variable name='matchisfalse'>For falso</xsl:variable>
<xsl:variable name='matchgreater'>For maior que</xsl:variable>
<xsl:variable name='matchgreaterequal'>For maior ou igual a</xsl:variable>
<xsl:variable name='matchless'>For menor que</xsl:variable>
<xsl:variable name='matchlessequal'>For menor ou igual a</xsl:variable>
<xsl:variable name='matchequal'>For igual a</xsl:variable>
<xsl:variable name='matchnotequal'>For diferente de</xsl:variable>
<xsl:variable name='matchafter'>&#x00c9; depois de</xsl:variable>
<xsl:variable name='matchafterequal'>&#x00c9; depois de ou igual a</xsl:variable>
<xsl:variable name='matchbefore'>&#x00c9; antes</xsl:variable>
<xsl:variable name='matchbeforeequal'>&#x00c9; antes ou igual a</xsl:variable>
<xsl:variable name='sortclue'>Clique para ordenar</xsl:variable>
<xsl:variable name='special'>Especial</xsl:variable>
<xsl:variable name='blocked'>Dia bloqueado</xsl:variable>
<xsl:variable name='today'>Hoje</xsl:variable>
<xsl:variable name='jan'>Jan</xsl:variable>
<xsl:variable name='feb'>Fev</xsl:variable>
<xsl:variable name='mar'>Mar</xsl:variable>
<xsl:variable name='apr'>Abr</xsl:variable>
<xsl:variable name='may'>Mai</xsl:variable>
<xsl:variable name='jun'>Jun</xsl:variable>
<xsl:variable name='jul'>Jul</xsl:variable>
<xsl:variable name='aug'>Ago</xsl:variable>
<xsl:variable name='sep'>Set</xsl:variable>
<xsl:variable name='oct'>Out</xsl:variable>
<xsl:variable name='nov'>Nov</xsl:variable>
<xsl:variable name='dec'>Dez</xsl:variable>
<xsl:variable name='navigation'>Navega&#x00e7;&#x00e3;o</xsl:variable>
<xsl:variable name='items'>Itens</xsl:variable>
<xsl:variable name='showing'>Exibindo</xsl:variable>
<xsl:variable name='back'>Voltar</xsl:variable>
<xsl:variable name='next'>Pr&#x00f3;xima</xsl:variable>
<xsl:variable name='previous'>Anterior</xsl:variable>
<xsl:variable name='help'>Ajuda</xsl:variable>
<xsl:variable name='cancel'>Cancelar</xsl:variable>
<xsl:variable name='ok'>OK</xsl:variable>
<xsl:variable name='movetotop'>Bot&#x00e3;o Mover para o In&#x00ed;cio - Move o item selecionado atualmente para o in&#x00ed;cio da Lista selecionada</xsl:variable>
<xsl:variable name='movetobottom'>Bot&#x00e3;o Mover para o Final - Move o item selecionado atualmente para o fim da Lista selecionada</xsl:variable>
<xsl:variable name='moveup'>Bot&#x00e3;o Mover para Cima - Move o item selecionado atualmente uma posi&#x00e7;&#x00e3;o acima na Lista selecionada</xsl:variable>
<xsl:variable name='movedown'>Bot&#x00e3;o Mover para Baixo - Move o item selecionado atualmente uma posi&#x00e7;&#x00e3;o abaixo na Lista selecionada</xsl:variable>
<xsl:variable name='moveright'>Bot&#x00e3;o Selecionar - Transfere o item selecionado atualmente da Caixa de di&#x00e1;logo Dispon&#x00ed;vel para a Caixa de di&#x00e1;logo Selecionados</xsl:variable>
<xsl:variable name='moveallright'>Bot&#x00e3;o Selecionar Todos - Seleciona todos os itens da Caixa de di&#x00e1;logo Dispon&#x00ed;vel</xsl:variable>
<xsl:variable name='moveleft'>Bot&#x00e3;o Desmarcar - Remove o item selecionado atualmente da Caixa de di&#x00e1;logo Dispon&#x00ed;vel</xsl:variable>
<xsl:variable name='moveallleft'>Bot&#x00e3;o Desmarcar Todos - Remove todos os itens da Caixa de di&#x00e1;logo Selecionados</xsl:variable>
<xsl:variable name='showchoices'>Mostrar op&#x00e7;&#x00f5;es</xsl:variable>
<xsl:variable name='sortascending'>Classifica&#x00e7;&#x00e3;o crescente</xsl:variable>
<xsl:variable name='sortdescending'>Classifica&#x00e7;&#x00e3;o decrescente</xsl:variable>
<xsl:variable name='scrollup'>Deslocar para cima</xsl:variable>
<xsl:variable name='scrolldown'>Deslocar para baixo</xsl:variable>
<xsl:variable name='expanddrawer'>Expandir</xsl:variable>
<xsl:variable name='collapsedrawer'>Recolher</xsl:variable>
<xsl:variable name='collapsenav'>Recolher painel de navega&#x00e7;&#x00e3;o</xsl:variable>
<xsl:variable name='expandnav'>Expandir painel de navega&#x00e7;&#x00e3;o</xsl:variable>
<xsl:variable name='resizenav'>Redimensionar Painel de Navega&#x00e7;&#x00e3;o</xsl:variable>
<xsl:variable name='resizetaskpane'>Redimensionar Painel de Tarefas</xsl:variable>
<xsl:variable name='spinner'>Aumentar/diminuir valores relacionados</xsl:variable>
<xsl:variable name='firstpage'>Primeira P&#x00e1;gina</xsl:variable>
<xsl:variable name='previouspage'>P&#x00e1;gina Anterior</xsl:variable>
<xsl:variable name='nextpage'>Pr&#x00f3;xima P&#x00e1;gina</xsl:variable>
<xsl:variable name='lastpage'>&#x00da;ltima P&#x00e1;gina</xsl:variable>
<xsl:variable name='singlerowselection'>sele&#x00e7;&#x00e3;o de uma linha</xsl:variable>
<xsl:variable name='multiplerowselection'>sele&#x00e7;&#x00e3;o de m&#x00fa;ltiplas linhas</xsl:variable>
<xsl:variable name='allrowselection'>Selecionar todas as linhas</xsl:variable>
<xsl:variable name='increaseindentation'>Aumentar recuo</xsl:variable>
<xsl:variable name='decreaseindentation'>Diminuir recuo</xsl:variable>
<xsl:variable name='leaf'>Folha</xsl:variable>
<xsl:variable name='expandtree'>Expandir item da &#x00e1;rvore</xsl:variable>
<xsl:variable name='collapsetree'>Recolher item da &#x00e1;rvore</xsl:variable>
<xsl:variable name='togglepane'>Alternar estado do painel</xsl:variable>
<xsl:variable name='closepane'>Fechar painel</xsl:variable>
<xsl:variable name='msgRequiredField'>Campo Obrigat&#x00f3;rio</xsl:variable>
<xsl:variable name='msgRequiredFieldsNotice'>Campos Obrigat&#x00f3;rios</xsl:variable>
<xsl:variable name='moveto_move'>Mover</xsl:variable>
<xsl:variable name='moveto_above'>Acima</xsl:variable>
<xsl:variable name='moveto_below'>Abaixo</xsl:variable>
<xsl:variable name='moveto_rownum'>N&#x00fa;mero da linha</xsl:variable>
<xsl:variable name='moveto_moveto'>Mover para</xsl:variable>
<xsl:variable name='applynew'>Aplicar novo</xsl:variable>
<xsl:variable name='emptyrow'>Nenhum dado a exibir</xsl:variable>
<xsl:variable name='more'>mais</xsl:variable>
<xsl:variable name='less'>menos</xsl:variable>
<xsl:variable name='loading'>Carregando</xsl:variable>
<xsl:variable name='moveabsolute'>Mover sele&#x00e7;&#x00e3;o para um local espec&#x00ed;fico</xsl:variable>
<xsl:variable name='showdatepicker'>Exibir datepicker</xsl:variable>
<xsl:variable name='showpreviousmonth'>Exibir m&#x00ea;s anterior</xsl:variable>
<xsl:variable name='shownextmonth'>Exibir m&#x00ea;s seguinte</xsl:variable>
<xsl:variable name='msgVerifyingLogin'>Verificando</xsl:variable>
<xsl:variable name='all'>Todos</xsl:variable>
<xsl:variable name='msgReorderError'>O n&#x00fa;mero de linha especificado n&#x00e3;o existe</xsl:variable>
<xsl:variable name='currentpasswordprompt'>Registrar Senha Atual</xsl:variable>
<xsl:variable name='newpasswordprompt'>Registrar Nova Senha</xsl:variable>
<xsl:variable name='confirmpasswordprompt'>Registrar Nova Senha de Novo</xsl:variable>
<xsl:variable name='save'>Salvar</xsl:variable>
<xsl:variable name='newwindow'>Abrir em uma nova janela</xsl:variable>
<xsl:variable name='gettingstarted'>Iniciando</xsl:variable>
<xsl:variable name='donotshowagain'>N&#x00e3;o mostrar de novo</xsl:variable>
<xsl:variable name='companylogo'>Logotipo da Cisco</xsl:variable>
<xsl:variable name='results'>resultados</xsl:variable>
<xsl:variable name='editthismodule'>Editar este m&#x00f3;dulo</xsl:variable>
<xsl:variable name='remove'>Remover</xsl:variable>
<xsl:variable name='loginproblem'>Problemas ao fazer login?</xsl:variable>
<xsl:variable name='expandpane'>Expandir</xsl:variable>
<xsl:variable name='collapsepane'>Recolher</xsl:variable>
<xsl:variable name='restorepane'>Restaurar</xsl:variable>
<xsl:variable name='dateselectionmonth'>M&#x00ea;s da data de sele&#x00e7;&#x00e3;o</xsl:variable>
<xsl:variable name='dateselectionday'>Dia da data de sele&#x00e7;&#x00e3;o</xsl:variable>
<xsl:variable name='dateselectionyear'>Ano da data de sele&#x00e7;&#x00e3;o</xsl:variable>
<xsl:variable name='timeselectionhour'>Hora do hor&#x00e1;rio de sele&#x00e7;&#x00e3;o</xsl:variable>
<xsl:variable name='timeselectionminute'>Minuto do hor&#x00e1;rio de sele&#x00e7;&#x00e3;o</xsl:variable>
<xsl:variable name='timeselectionampm'>12 ou 24 horas do hor&#x00e1;rio de sele&#x00e7;&#x00e3;o</xsl:variable>
<xsl:variable name='and'>e</xsl:variable>
<xsl:variable name='or'>ou</xsl:variable>
<xsl:variable name='addfilter'>Adicionar filtro</xsl:variable>
<xsl:variable name='removefilter'>Remover filtro</xsl:variable>
<xsl:variable name='filterrelationship'>Tipo de filtro</xsl:variable>
<xsl:variable name='signin'>Registre-se</xsl:variable>
<xsl:variable name='signout'>Sair</xsl:variable>
<xsl:variable name='submenu'>Submenu</xsl:variable>
<xsl:variable name='gotopage1'>Ir para p&#x00e1;gina 1</xsl:variable>
<xsl:variable name='gotopage2'>Ir para p&#x00e1;gina 2</xsl:variable>
<xsl:variable name='gotopage3'>Ir para p&#x00e1;gina 3</xsl:variable>
<xsl:variable name='gotopage4'>Ir para p&#x00e1;gina 4</xsl:variable>
<xsl:variable name='gotopage5'>Ir para p&#x00e1;gina 5</xsl:variable>
<xsl:variable name='gotopage6'>Ir para p&#x00e1;gina 6</xsl:variable>
<xsl:variable name='gotopage7'>Ir para p&#x00e1;gina 7</xsl:variable>
<xsl:variable name='gotopage8'>Ir para p&#x00e1;gina 8</xsl:variable>
<xsl:variable name='gotopage9'>Ir para p&#x00e1;gina 9</xsl:variable>
<xsl:variable name='gotopage10'>Ir para p&#x00e1;gina 10</xsl:variable>
<xsl:variable name='refresh'>Atualizar</xsl:variable>
<xsl:variable name='status'>Status</xsl:variable>
<xsl:variable name='togglefilters'>Alternar exibi&#x00e7;&#x00e3;o de filtros</xsl:variable>
<xsl:variable name='itemsselected'>itens selecionados</xsl:variable>
<xsl:variable name='bulkvisible'>Todas as linhas vis&#x00ed;veis xxx est&#x00e3;o selecionadas.</xsl:variable>
<xsl:variable name='bulktotal'>Selecionar todas as linhas xxx</xsl:variable>
<xsl:variable name='informationalmessage'>Mensagem informativa</xsl:variable>
<xsl:variable name='criticalerrormessage'>Mensagem de erro cr&#x00ed;tico</xsl:variable>
<xsl:variable name='errormessage'>Mensagem de erro</xsl:variable>
<xsl:variable name='warningmessage'>Mensagem de aviso</xsl:variable>
<xsl:variable name='successmessage'>Mensagem de &#x00ea;xito</xsl:variable>
<xsl:variable name='alert'>Alerta</xsl:variable>
<xsl:variable name='confirm'>Confirmar</xsl:variable>
<xsl:variable name='prompt'>Aviso</xsl:variable>
<xsl:variable name='yes'>Sim</xsl:variable>
<xsl:variable name='no'>N&#x00e3;o</xsl:variable>
<xsl:variable name='expandwindow'>Expandir janela para ver itens adicionais</xsl:variable>
<xsl:variable name='messagenumber'>N&#x00fa;mero da Mensagem</xsl:variable>
<xsl:variable name='rssfeed'>RSS feed</xsl:variable>
</xsl:stylesheet>