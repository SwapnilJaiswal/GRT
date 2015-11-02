<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name='logout'>D&#x00e9;connexion</xsl:variable>
<xsl:variable name='about'>&#x00c0; propos</xsl:variable>
<xsl:variable name='msgInvalidData'>Les donn&#x00e9;es saisies ne sont pas valides</xsl:variable>
<xsl:variable name='msgInvalidData.ipv4'>Une adresse IPv4 valide doit contenir quatre s&#x00e9;ries de chiffres (0-255) s&#x00e9;par&#x00e9;es par des points, par ex. 123.0.255.3</xsl:variable>
<xsl:variable name='msgInvalidData.netmask'>Un masque de r&#x00e9;seau valide doit contenir quatre s&#x00e9;ries de chiffres (0-255) s&#x00e9;par&#x00e9;es par des points, par ex. 123.0.255.3</xsl:variable>
<xsl:variable name='msgInvalidData.mac'>Pour &#x00ea;tre valide, une adresse MAC doit &#x00ea;tre au format nn:nn:nn:nn:nn:nn, o&#x00f9; &#92;&#34;n&#92;&#34; repr&#x00e9;sente un chiffre (0-9) ou une lettre (A-F)</xsl:variable>
<xsl:variable name='msgInvalidData.ipv6'>Une adresse IPv6 valide prend la forme n:n:n:n:n:n:n:n, o&#x00f9; &#x00ab;&#x00a0;n&#x00a0;&#x00bb; est un chiffre (0-9) ou une lettre (A-F).</xsl:variable>
<xsl:variable name='msgInvalidData.ipv6mask'>Les donn&#x00e9;es saisies ne sont pas valides.</xsl:variable>
<xsl:variable name='msgInvalidData.time2'>L'heure saisie doit &#x00ea;tre comprise entre 1:00 et 12:59</xsl:variable>
<xsl:variable name='msgInvalidData.miltime2'>L'heure saisie doit &#x00ea;tre comprise entre 0:00 et 23:59</xsl:variable>
<xsl:variable name='msgNoncontiguousReorder'>Vous pouvez modifier uniquement l'ordre des lignes cons&#x00e9;cutives</xsl:variable>
<xsl:variable name='msgStepHasErrors'>L'&#x00e9;tape de l'Assistant contient une ou plusieurs erreurs</xsl:variable>
<xsl:variable name='msgTabHasErrors'>Le label contient 1 ou plusieurs erreurs</xsl:variable>
<xsl:variable name='rowsperpage'>Lignes par page</xsl:variable>
<xsl:variable name='perpage'>par page</xsl:variable>
<xsl:variable name='itemsperpage'>&#x00c9;l&#x00e9;ments par page</xsl:variable>
<xsl:variable name='page'>Page</xsl:variable>
<xsl:variable name='of'>sur</xsl:variable>
<xsl:variable name='go'>Aller</xsl:variable>
<xsl:variable name='setall'>S&#x00e9;lectionner tout</xsl:variable>
<xsl:variable name='clearall'>Effacer tout</xsl:variable>
<xsl:variable name='undoall'>Annuler tout</xsl:variable>
<xsl:variable name='sun'>Dim</xsl:variable>
<xsl:variable name='mon'>Lun</xsl:variable>
<xsl:variable name='tue'>Mar</xsl:variable>
<xsl:variable name='wed'>Mer</xsl:variable>
<xsl:variable name='thu'>Jeu</xsl:variable>
<xsl:variable name='fri'>Ven</xsl:variable>
<xsl:variable name='sat'>Sam</xsl:variable>
<xsl:variable name='login'>Connexion</xsl:variable>
<xsl:variable name='submit'>Soumettre</xsl:variable>
<xsl:variable name='reset'>R&#x00e9;initialiser</xsl:variable>
<xsl:variable name='filter'>Filtre</xsl:variable>
<xsl:variable name='matchif'>Correspondance si</xsl:variable>
<xsl:variable name='matchgo'>Ok</xsl:variable>
<xsl:variable name='matchclear'>Supprimer le filtre</xsl:variable>
<xsl:variable name='matchcontains'>Contient</xsl:variable>
<xsl:variable name='matchnotcontain'>Ne contient pas</xsl:variable>
<xsl:variable name='matchstartswith'>Commence par</xsl:variable>
<xsl:variable name='matchendswith'>Se termine par</xsl:variable>
<xsl:variable name='matchexactly'>Est exactement</xsl:variable>
<xsl:variable name='matchnotexactly'>N'est pas</xsl:variable>
<xsl:variable name='matchempty'>Est vide</xsl:variable>
<xsl:variable name='matchnotempty'>N'est pas vide</xsl:variable>
<xsl:variable name='matchistrue'>Est vrai</xsl:variable>
<xsl:variable name='matchisfalse'>Est faux</xsl:variable>
<xsl:variable name='matchgreater'>Est sup&#x00e9;rieur &#x00e0;</xsl:variable>
<xsl:variable name='matchgreaterequal'>Est sup&#x00e9;rieur ou &#x00e9;gal &#x00e0;</xsl:variable>
<xsl:variable name='matchless'>Est inf&#x00e9;rieur &#x00e0;</xsl:variable>
<xsl:variable name='matchlessequal'>Est inf&#x00e9;rieur ou &#x00e9;gal &#x00e0;</xsl:variable>
<xsl:variable name='matchequal'>Est &#x00e9;gal &#x00e0;</xsl:variable>
<xsl:variable name='matchnotequal'>Est diff&#x00e9;rent de</xsl:variable>
<xsl:variable name='matchafter'>Est apr&#x00e8;s</xsl:variable>
<xsl:variable name='matchafterequal'>Est apr&#x00e8;s ou &#x00e9;gal &#x00e0;</xsl:variable>
<xsl:variable name='matchbefore'>Est avant</xsl:variable>
<xsl:variable name='matchbeforeequal'>Est avant ou &#x00e9;gal &#x00e0;</xsl:variable>
<xsl:variable name='sortclue'>Cliquer pour trier</xsl:variable>
<xsl:variable name='special'>Particulier(s)</xsl:variable>
<xsl:variable name='blocked'>Jour bloqu&#x00e9;</xsl:variable>
<xsl:variable name='today'>Aujourd'hui</xsl:variable>
<xsl:variable name='jan'>Jan</xsl:variable>
<xsl:variable name='feb'>F&#x00e9;v</xsl:variable>
<xsl:variable name='mar'>Mar</xsl:variable>
<xsl:variable name='apr'>Avr</xsl:variable>
<xsl:variable name='may'>Mai</xsl:variable>
<xsl:variable name='jun'>Juin</xsl:variable>
<xsl:variable name='jul'>Jui</xsl:variable>
<xsl:variable name='aug'>Ao&#x00fb;</xsl:variable>
<xsl:variable name='sep'>Sep</xsl:variable>
<xsl:variable name='oct'>Oct</xsl:variable>
<xsl:variable name='nov'>Nov</xsl:variable>
<xsl:variable name='dec'>D&#x00e9;c</xsl:variable>
<xsl:variable name='navigation'>Navigation</xsl:variable>
<xsl:variable name='items'>&#x00c9;l&#x00e9;ments</xsl:variable>
<xsl:variable name='showing'>Affichage</xsl:variable>
<xsl:variable name='back'>Pr&#x00e9;c&#x00e9;dent</xsl:variable>
<xsl:variable name='next'>Suivant</xsl:variable>
<xsl:variable name='previous'>Pr&#x00e9;c&#x00e9;dent</xsl:variable>
<xsl:variable name='help'>Aide</xsl:variable>
<xsl:variable name='cancel'>Annuler</xsl:variable>
<xsl:variable name='ok'>OK</xsl:variable>
<xsl:variable name='movetotop'>Bouton D&#x00e9;placer en haut&#x00a0;: d&#x00e9;place l'&#x00e9;l&#x00e9;ment actuellement s&#x00e9;lectionn&#x00e9; en haut de la liste S&#x00e9;lectionn&#x00e9;</xsl:variable>
<xsl:variable name='movetobottom'>Bouton D&#x00e9;placer en bas&#x00a0;: d&#x00e9;place l'&#x00e9;l&#x00e9;ment actuellement s&#x00e9;lectionn&#x00e9; en bas de la liste S&#x00e9;lectionn&#x00e9;</xsl:variable>
<xsl:variable name='moveup'>Bouton Monter&#x00a0;: d&#x00e9;place l'&#x00e9;l&#x00e9;ment actuellement s&#x00e9;lectionn&#x00e9; d'une place vers le haut dans la liste S&#x00e9;lectionn&#x00e9;</xsl:variable>
<xsl:variable name='movedown'>Bouton Descendre&#x00a0;: d&#x00e9;place l'&#x00e9;l&#x00e9;ment actuellement s&#x00e9;lectionn&#x00e9; d'une place vers le bas dans la liste S&#x00e9;lectionn&#x00e9;</xsl:variable>
<xsl:variable name='moveright'>Bouton S&#x00e9;lectionner&#x00a0;: transf&#x00e8;re l'&#x00e9;l&#x00e9;ment actuellement s&#x00e9;lectionn&#x00e9; de la zone Disponible &#x00e0; la zone S&#x00e9;lectionn&#x00e9;</xsl:variable>
<xsl:variable name='moveallright'>Bouton S&#x00e9;lectionner tout&#x00a0;: s&#x00e9;lectionne l'ensemble des &#x00e9;l&#x00e9;ments de la zone Disponible</xsl:variable>
<xsl:variable name='moveleft'>Bouton D&#x00e9;s&#x00e9;lectionner&#x00a0;: supprime l'&#x00e9;l&#x00e9;ment actuellement s&#x00e9;lectionn&#x00e9; de la zone S&#x00e9;lectionn&#x00e9;</xsl:variable>
<xsl:variable name='moveallleft'>Bouton D&#x00e9;s&#x00e9;lectionner tout&#x00a0;: supprime l'ensemble des &#x00e9;l&#x00e9;ments actuellement s&#x00e9;lectionn&#x00e9;s de la zone S&#x00e9;lectionn&#x00e9;</xsl:variable>
<xsl:variable name='showchoices'>Afficher les choix</xsl:variable>
<xsl:variable name='sortascending'>Trier par ordre croissant</xsl:variable>
<xsl:variable name='sortdescending'>Trier par ordre d&#x00e9;croissant</xsl:variable>
<xsl:variable name='scrollup'>D&#x00e9;filement vers le haut</xsl:variable>
<xsl:variable name='scrolldown'>D&#x00e9;filement vers le bas</xsl:variable>
<xsl:variable name='expanddrawer'>D&#x00e9;velopper</xsl:variable>
<xsl:variable name='collapsedrawer'>R&#x00e9;duire</xsl:variable>
<xsl:variable name='collapsenav'>R&#x00e9;duire le panneau de navigation</xsl:variable>
<xsl:variable name='expandnav'>D&#x00e9;velopper le panneau de navigation</xsl:variable>
<xsl:variable name='resizenav'>Redimensionner le panneau de navigation</xsl:variable>
<xsl:variable name='resizetaskpane'>Redimensionner volet des t&#x00e2;ches</xsl:variable>
<xsl:variable name='spinner'>Augmente/r&#x00e9;duit la valeur associ&#x00e9;e</xsl:variable>
<xsl:variable name='firstpage'>Premi&#x00e8;re page</xsl:variable>
<xsl:variable name='previouspage'>Page pr&#x00e9;c&#x00e9;dente</xsl:variable>
<xsl:variable name='nextpage'>Page suivante</xsl:variable>
<xsl:variable name='lastpage'>Derni&#x00e8;re page</xsl:variable>
<xsl:variable name='singlerowselection'>s&#x00e9;lection simple</xsl:variable>
<xsl:variable name='multiplerowselection'>s&#x00e9;lection multiple</xsl:variable>
<xsl:variable name='allrowselection'>S&#x00e9;lectionnez toutes les lignes</xsl:variable>
<xsl:variable name='increaseindentation'>Augmenter l'indentation</xsl:variable>
<xsl:variable name='decreaseindentation'>R&#x00e9;duire l'indentation</xsl:variable>
<xsl:variable name='leaf'>Feuille</xsl:variable>
<xsl:variable name='expandtree'>D&#x00e9;velopper l'&#x00e9;l&#x00e9;ment d'arborescence</xsl:variable>
<xsl:variable name='collapsetree'>R&#x00e9;duire l'&#x00e9;l&#x00e9;ment d'arborescence</xsl:variable>
<xsl:variable name='togglepane'>Basculer l'&#x00e9;tat du panneau</xsl:variable>
<xsl:variable name='closepane'>Fermer le panneau</xsl:variable>
<xsl:variable name='msgRequiredField'>Champ obligatoire</xsl:variable>
<xsl:variable name='msgRequiredFieldsNotice'>Champs obligatoires</xsl:variable>
<xsl:variable name='moveto_move'>D&#x00e9;placer</xsl:variable>
<xsl:variable name='moveto_above'>Au-dessus</xsl:variable>
<xsl:variable name='moveto_below'>En-dessous</xsl:variable>
<xsl:variable name='moveto_rownum'>Num&#x00e9;ro de ligne</xsl:variable>
<xsl:variable name='moveto_moveto'>D&#x00e9;placer vers</xsl:variable>
<xsl:variable name='applynew'>Appliquer nouveau</xsl:variable>
<xsl:variable name='emptyrow'>Pas de donn&#x00e9;es &#x00e0; afficher</xsl:variable>
<xsl:variable name='more'>plus</xsl:variable>
<xsl:variable name='less'>moins</xsl:variable>
<xsl:variable name='loading'>En cours de chargement...</xsl:variable>
<xsl:variable name='moveabsolute'>D&#x00e9;place la s&#x00e9;lection vers un emplacement pr&#x00e9;cis</xsl:variable>
<xsl:variable name='showdatepicker'>Affichage du s&#x00e9;lecteur de date</xsl:variable>
<xsl:variable name='showpreviousmonth'>Affichage du mois pr&#x00e9;c&#x00e9;dent</xsl:variable>
<xsl:variable name='shownextmonth'>Affichage du mois prochain</xsl:variable>
<xsl:variable name='msgVerifyingLogin'>V&#x00e9;rification en cours</xsl:variable>
<xsl:variable name='all'>Tous</xsl:variable>
<xsl:variable name='msgReorderError'>Le num&#x00e9;ro de ligne donn&#x00e9; n'existe pas</xsl:variable>
<xsl:variable name='currentpasswordprompt'>Entrez le mot de passe actuel</xsl:variable>
<xsl:variable name='newpasswordprompt'>Entrez un nouveau mot de passe</xsl:variable>
<xsl:variable name='confirmpasswordprompt'>Rentrez un nouveau mot de passe</xsl:variable>
<xsl:variable name='save'>Sauver</xsl:variable>
<xsl:variable name='newwindow'>Ouvrir dans une nouvelle fen&#x00ea;tre</xsl:variable>
<xsl:variable name='gettingstarted'>Pour commencer</xsl:variable>
<xsl:variable name='donotshowagain'>Ne plus montrer</xsl:variable>
<xsl:variable name='companylogo'>Logo Cisco</xsl:variable>
<xsl:variable name='results'>r&#x00e9;sultats</xsl:variable>
<xsl:variable name='editthismodule'>Modifier ce module</xsl:variable>
<xsl:variable name='remove'>Supprimer</xsl:variable>
<xsl:variable name='loginproblem'>Probl&#x00e8;mes de connexion&#x00a0;?</xsl:variable>
<xsl:variable name='expandpane'>D&#x00e9;velopper</xsl:variable>
<xsl:variable name='collapsepane'>R&#x00e9;duire</xsl:variable>
<xsl:variable name='restorepane'>Restaurer</xsl:variable>
<xsl:variable name='dateselectionmonth'>S&#x00e9;lection de la date&#x00a0;: mois</xsl:variable>
<xsl:variable name='dateselectionday'>S&#x00e9;lection de la date&#x00a0;: jour</xsl:variable>
<xsl:variable name='dateselectionyear'>S&#x00e9;lection de la date&#x00a0;: ann&#x00e9;e</xsl:variable>
<xsl:variable name='timeselectionhour'>S&#x00e9;lection de l'heure&#x00a0;: heure</xsl:variable>
<xsl:variable name='timeselectionminute'>S&#x00e9;lection de l'heure&#x00a0;: minute</xsl:variable>
<xsl:variable name='timeselectionampm'>S&#x00e9;lection de l'heure&#x00a0;: matin ou apr&#x00e8;s-midi</xsl:variable>
<xsl:variable name='and'>et</xsl:variable>
<xsl:variable name='or'>ou</xsl:variable>
<xsl:variable name='addfilter'>Ajouter filtre</xsl:variable>
<xsl:variable name='removefilter'>Supprimer filtre</xsl:variable>
<xsl:variable name='filterrelationship'>Relation de filtre</xsl:variable>
<xsl:variable name='signin'>Connexion</xsl:variable>
<xsl:variable name='signout'>D&#x00e9;connexion</xsl:variable>
<xsl:variable name='submenu'>Sous-menu</xsl:variable>
<xsl:variable name='gotopage1'>Aller &#x00e0; la page&#x00a0;1</xsl:variable>
<xsl:variable name='gotopage2'>Aller &#x00e0; la page&#x00a0;2</xsl:variable>
<xsl:variable name='gotopage3'>Aller &#x00e0; la page&#x00a0;3</xsl:variable>
<xsl:variable name='gotopage4'>Aller &#x00e0; la page&#x00a0;4</xsl:variable>
<xsl:variable name='gotopage5'>Aller &#x00e0; la page&#x00a0;5</xsl:variable>
<xsl:variable name='gotopage6'>Aller &#x00e0; la page&#x00a0;6</xsl:variable>
<xsl:variable name='gotopage7'>Aller &#x00e0; la page&#x00a0;7</xsl:variable>
<xsl:variable name='gotopage8'>Aller &#x00e0; la page&#x00a0;8</xsl:variable>
<xsl:variable name='gotopage9'>Aller &#x00e0; la page&#x00a0;9</xsl:variable>
<xsl:variable name='gotopage10'>Aller &#x00e0; la page&#x00a0;10</xsl:variable>
<xsl:variable name='refresh'>Actualiser</xsl:variable>
<xsl:variable name='status'>&#x00c9;tat</xsl:variable>
<xsl:variable name='togglefilters'>Afficher/masquer les filtres</xsl:variable>
<xsl:variable name='itemsselected'>&#x00e9;l&#x00e9;ments s&#x00e9;lectionn&#x00e9;s</xsl:variable>
<xsl:variable name='bulkvisible'>Les xxx lignes visibles sont s&#x00e9;lectionn&#x00e9;es.</xsl:variable>
<xsl:variable name='bulktotal'>S&#x00e9;lectionne les xxx lignes</xsl:variable>
<xsl:variable name='informationalmessage'>Message d'information</xsl:variable>
<xsl:variable name='criticalerrormessage'>Message d'erreur critique</xsl:variable>
<xsl:variable name='errormessage'>Message d'erreur</xsl:variable>
<xsl:variable name='warningmessage'>Message d&#x2019;avertissement</xsl:variable>
<xsl:variable name='successmessage'>Message de r&#x00e9;ussite</xsl:variable>
<xsl:variable name='alert'>Alerte</xsl:variable>
<xsl:variable name='confirm'>Confirmer</xsl:variable>
<xsl:variable name='prompt'>Inviter</xsl:variable>
<xsl:variable name='yes'>Oui</xsl:variable>
<xsl:variable name='no'>Non</xsl:variable>
<xsl:variable name='expandwindow'>D&#x00e9;velopper la fen&#x00ea;tre pour afficher d'autres &#x00e9;l&#x00e9;ments</xsl:variable>
<xsl:variable name='messagenumber'>Nombre de messages</xsl:variable>
<xsl:variable name='rssfeed'>Flux RSS</xsl:variable>
</xsl:stylesheet>
