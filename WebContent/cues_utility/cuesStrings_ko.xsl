<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name='logout'>&#xb85c;&#xadf8;&#xc544;&#xc6c3;</xsl:variable>
<xsl:variable name='about'>&#xc815;&#xbcf4;</xsl:variable>
<xsl:variable name='msgInvalidData'>&#xc785;&#xb825;&#xd55c; &#xb370;&#xc774;&#xd130;&#xac00; &#xc798;&#xbabb;&#xb418;&#xc5c8;&#xc2b5;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='msgInvalidData.ipv4'>&#xc62c;&#xbc14;&#xb978; IPv4 &#xc8fc;&#xc18c;&#xb294; 123.0.255.3&#xacfc; &#xac19;&#xc774; &#xb9c8;&#xce68;&#xd45c;&#xb85c; &#xad6c;&#xbd84;&#xb41c; &#xb124; &#xbb36;&#xc74c;&#xc758; &#xc22b;&#xc790;(0-255)&#xb85c; &#xad6c;&#xc131;&#xb429;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='msgInvalidData.netmask'>&#xc62c;&#xbc14;&#xb978; &#xb124;&#xd2b8;&#xc6cc;&#xd06c; &#xb9c8;&#xc2a4;&#xd06c;&#xb294; 123.0.255.3&#xacfc; &#xac19;&#xc774; &#xb9c8;&#xce68;&#xd45c;&#xb85c; &#xad6c;&#xbd84;&#xb41c; &#xb124; &#xbb36;&#xc74c;&#xc758; &#xc22b;&#xc790;(0-255)&#xb85c; &#xad6c;&#xc131;&#xb429;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='msgInvalidData.mac'>&#xc62c;&#xbc14;&#xb978; MAC &#xc8fc;&#xc18c;&#xb294; nn:nn:nn:nn:nn:nn&#xc785;&#xb2c8;&#xb2e4;. &#xc5ec;&#xae30;&#xc11c; 'n'&#xc740; &#xc22b;&#xc790;(0-9) &#xb610;&#xb294; &#xbb38;&#xc790;(A-F)&#xc785;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='msgInvalidData.ipv6'>&#xc720;&#xd6a8;&#xd55c; IPv6 &#xc8fc;&#xc18c;&#xb294; n:n:n:n:n:n:n:n&#xc774;&#xba70;, &#xc5ec;&#xae30;&#xc11c; 'n'&#xc740; 0-9&#xc758; &#xc22b;&#xc790; &#xb610;&#xb294; A-F&#xc758; &#xc601;&#xbb38;&#xc790;&#xc785;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='msgInvalidData.ipv6mask'>&#xc785;&#xb825;&#xd55c; &#xb370;&#xc774;&#xd130;&#xac00; &#xc798;&#xbabb;&#xb418;&#xc5c8;&#xc2b5;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='msgInvalidData.time2'>1:00 - 12:59 &#xc0ac;&#xc774;&#xc758; &#xc2dc;&#xac04;&#xc744; &#xc785;&#xb825;&#xd574;&#xc57c; &#xd569;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='msgInvalidData.miltime2'>0:00 - 23:59 &#xc0ac;&#xc774;&#xc758; &#xc2dc;&#xac04;&#xc744; &#xc785;&#xb825;&#xd574;&#xc57c; &#xd569;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='msgNoncontiguousReorder'>&#xc120;&#xd0dd;&#xd55c; &#xd589;&#xc774; &#xc778;&#xc811;&#xd55c; &#xacbd;&#xc6b0;&#xc5d0;&#xb9cc; &#xc21c;&#xc11c;&#xb97c; &#xbc14;&#xafc0; &#xc218; &#xc788;&#xc2b5;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='msgStepHasErrors'>&#xb9c8;&#xbc95;&#xc0ac; &#xb2e8;&#xacc4;&#xc5d0; &#xd558;&#xb098; &#xc774;&#xc0c1;&#xc758; &#xc624;&#xb958;&#xac00; &#xc788;&#xc2b5;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='msgTabHasErrors'>&#xd0ed;&#xc5d0; &#xd558;&#xb098; &#xc774;&#xc0c1;&#xc758; &#xc624;&#xb958;&#xac00; &#xc788;&#xc2b5;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='rowsperpage'>&#xd398;&#xc774;&#xc9c0;&#xb2f9; &#xd589;</xsl:variable>
<xsl:variable name='perpage'>&#xd398;&#xc774;&#xc9c0;&#xb2f9;</xsl:variable>
<xsl:variable name='itemsperpage'>&#xd398;&#xc774;&#xc9c0;&#xb2f9; &#xd56d;&#xbaa9;</xsl:variable>
<xsl:variable name='page'>&#xd398;&#xc774;&#xc9c0;</xsl:variable>
<xsl:variable name='of'>/</xsl:variable>
<xsl:variable name='go'>&#xc801;&#xc6a9;</xsl:variable>
<xsl:variable name='setall'>&#xbaa8;&#xb450; &#xc120;&#xd0dd;</xsl:variable>
<xsl:variable name='clearall'>&#xbaa8;&#xb450; &#xc9c0;&#xc6b0;&#xae30;</xsl:variable>
<xsl:variable name='undoall'>&#xbaa8;&#xb450; &#xc2e4;&#xd589; &#xcde8;&#xc18c;</xsl:variable>
<xsl:variable name='sun'>&#xc77c;</xsl:variable>
<xsl:variable name='mon'>&#xc6d4;</xsl:variable>
<xsl:variable name='tue'>&#xd654;</xsl:variable>
<xsl:variable name='wed'>&#xc218;</xsl:variable>
<xsl:variable name='thu'>&#xbaa9;</xsl:variable>
<xsl:variable name='fri'>&#xae08;</xsl:variable>
<xsl:variable name='sat'>&#xd1a0;</xsl:variable>
<xsl:variable name='login'>&#xb85c;&#xadf8;&#xc778;</xsl:variable>
<xsl:variable name='submit'>&#xc81c;&#xcd9c;</xsl:variable>
<xsl:variable name='reset'>&#xc7ac;&#xc124;&#xc815;</xsl:variable>
<xsl:variable name='filter'>&#xd544;&#xd130;</xsl:variable>
<xsl:variable name='matchif'>&#xc77c;&#xce58; &#xc870;&#xac74;</xsl:variable>
<xsl:variable name='matchgo'>&#xc801;&#xc6a9;</xsl:variable>
<xsl:variable name='matchclear'>&#xd544;&#xd130; &#xc9c0;&#xc6b0;&#xae30;</xsl:variable>
<xsl:variable name='matchcontains'>&#xd3ec;&#xd568;</xsl:variable>
<xsl:variable name='matchnotcontain'>&#xd3ec;&#xd568;&#xd558;&#xc9c0; &#xc54a;&#xc74c;</xsl:variable>
<xsl:variable name='matchstartswith'>&#xc2dc;&#xc791; &#xbb38;&#xc790;</xsl:variable>
<xsl:variable name='matchendswith'>&#xb05d; &#xbb38;&#xc790;</xsl:variable>
<xsl:variable name='matchexactly'>&#xc815;&#xd655;&#xd558;&#xac8c; &#xc77c;&#xce58;&#xd568;</xsl:variable>
<xsl:variable name='matchnotexactly'>&#xc77c;&#xce58;&#xd558;&#xc9c0; &#xc54a;&#xc74c;</xsl:variable>
<xsl:variable name='matchempty'>&#xbe44;&#xc5b4; &#xc788;&#xc74c;</xsl:variable>
<xsl:variable name='matchnotempty'>&#xbe44;&#xc5b4; &#xc788;&#xc9c0; &#xc54a;&#xc74c;</xsl:variable>
<xsl:variable name='matchistrue'>&#xcc38;</xsl:variable>
<xsl:variable name='matchisfalse'>&#xac70;&#xc9d3;</xsl:variable>
<xsl:variable name='matchgreater'>&#xbcf4;&#xb2e4; &#xd07c;</xsl:variable>
<xsl:variable name='matchgreaterequal'>&#xbcf4;&#xb2e4; &#xd06c;&#xac70;&#xb098; &#xac19;&#xc74c;</xsl:variable>
<xsl:variable name='matchless'>&#xbcf4;&#xb2e4; &#xc791;&#xc74c;</xsl:variable>
<xsl:variable name='matchlessequal'>&#xbcf4;&#xb2e4; &#xc791;&#xac70;&#xb098; &#xac19;&#xc74c;</xsl:variable>
<xsl:variable name='matchequal'>&#xac19;&#xc74c;</xsl:variable>
<xsl:variable name='matchnotequal'>&#xac19;&#xc9c0; &#xc54a;&#xc74c;</xsl:variable>
<xsl:variable name='matchafter'>&#xc774;&#xd6c4;&#xc5d0;</xsl:variable>
<xsl:variable name='matchafterequal'>&#xc774;&#xd6c4; &#xb610;&#xb294; &#xac19;&#xc740;</xsl:variable>
<xsl:variable name='matchbefore'>&#xc774;&#xc804;&#xc5d0;</xsl:variable>
<xsl:variable name='matchbeforeequal'>&#xc774;&#xc804; &#xb610;&#xb294; &#xac19;&#xc740;</xsl:variable>
<xsl:variable name='sortclue'>&#xd074;&#xb9ad;&#xd574;&#xc11c; &#xc815;&#xb82c;</xsl:variable>
<xsl:variable name='special'>&#xd2b9;&#xbcc4; &#xd734;&#xc77c;</xsl:variable>
<xsl:variable name='blocked'>&#xcc28;&#xb2e8; &#xc77c;&#xc790;</xsl:variable>
<xsl:variable name='today'>&#xc624;&#xb298;</xsl:variable>
<xsl:variable name='jan'>1&#xc6d4;</xsl:variable>
<xsl:variable name='feb'>2&#xc6d4;</xsl:variable>
<xsl:variable name='mar'>3&#xc6d4;</xsl:variable>
<xsl:variable name='apr'>4&#xc6d4;</xsl:variable>
<xsl:variable name='may'>5&#xc6d4;</xsl:variable>
<xsl:variable name='jun'>6&#xc6d4;</xsl:variable>
<xsl:variable name='jul'>7&#xc6d4;</xsl:variable>
<xsl:variable name='aug'>8&#xc6d4;</xsl:variable>
<xsl:variable name='sep'>9&#xc6d4;</xsl:variable>
<xsl:variable name='oct'>10&#xc6d4;</xsl:variable>
<xsl:variable name='nov'>11&#xc6d4;</xsl:variable>
<xsl:variable name='dec'>12&#xc6d4;</xsl:variable>
<xsl:variable name='navigation'>&#xd0d0;&#xc0c9;</xsl:variable>
<xsl:variable name='items'>&#xd56d;&#xbaa9;</xsl:variable>
<xsl:variable name='showing'>&#xd45c;&#xc2dc;&#xd558;&#xae30;</xsl:variable>
<xsl:variable name='back'>&#xb4a4;&#xb85c;</xsl:variable>
<xsl:variable name='next'>&#xb2e4;&#xc74c;</xsl:variable>
<xsl:variable name='previous'>&#xc774;&#xc804;</xsl:variable>
<xsl:variable name='help'>&#xb3c4;&#xc6c0;&#xb9d0;</xsl:variable>
<xsl:variable name='cancel'>&#xcde8;&#xc18c;</xsl:variable>
<xsl:variable name='ok'>&#xd655;&#xc778;</xsl:variable>
<xsl:variable name='movetotop'>&#xb9e8; &#xc704;&#xb85c; &#xc774;&#xb3d9; &#xb2e8;&#xcd94; - &#xd604;&#xc7ac; &#xc120;&#xd0dd;&#xd55c; &#xd56d;&#xbaa9;&#xc744; &#xc120;&#xd0dd;&#xd55c; &#xbaa9;&#xb85d;&#xc758; &#xb9e8; &#xc704;&#xb85c; &#xc774;&#xb3d9;&#xd569;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='movetobottom'>&#xb9e8; &#xc544;&#xb798;&#xb85c; &#xc774;&#xb3d9; &#xb2e8;&#xcd94; - &#xd604;&#xc7ac; &#xc120;&#xd0dd;&#xd55c; &#xd56d;&#xbaa9;&#xc744; &#xc120;&#xd0dd;&#xd55c; &#xbaa9;&#xb85d;&#xc758; &#xb05d;&#xc73c;&#xb85c; &#xc774;&#xb3d9;&#xd569;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='moveup'>&#xc704;&#xb85c; &#xc774;&#xb3d9; &#xb2e8;&#xcd94; - &#xd604;&#xc7ac; &#xc120;&#xd0dd;&#xd55c; &#xd56d;&#xbaa9;&#xc744; &#xc120;&#xd0dd;&#xd55c; &#xbaa9;&#xb85d;&#xc5d0;&#xc11c; &#xd55c; &#xb2e8;&#xacc4; &#xc704;&#xb85c; &#xc774;&#xb3d9;&#xd569;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='movedown'>&#xc544;&#xb798;&#xb85c; &#xc774;&#xb3d9; &#xb2e8;&#xcd94; - &#xd604;&#xc7ac; &#xc120;&#xd0dd;&#xd55c; &#xd56d;&#xbaa9;&#xc744; &#xc120;&#xd0dd;&#xd55c; &#xbaa9;&#xb85d;&#xc5d0;&#xc11c; &#xd55c; &#xb2e8;&#xacc4; &#xc544;&#xb798;&#xb85c; &#xc774;&#xb3d9;&#xd569;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='moveright'>&#xc120;&#xd0dd; &#xb2e8;&#xcd94; - &#xd604;&#xc7ac; &#xc120;&#xd0dd;&#xd55c; &#xd56d;&#xbaa9;&#xc744; &#xc0ac;&#xc6a9; &#xac00;&#xb2a5; &#xc0c1;&#xc790;&#xc5d0;&#xc11c; &#xc120;&#xd0dd;&#xd55c; &#xc0c1;&#xc790;&#xb85c; &#xbcf4;&#xb0c5;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='moveallright'>&#xbaa8;&#xb450; &#xc120;&#xd0dd; &#xb2e8;&#xcd94; - &#xc0ac;&#xc6a9; &#xac00;&#xb2a5; &#xc0c1;&#xc790;&#xc758; &#xbaa8;&#xb4e0; &#xd56d;&#xbaa9;&#xc744; &#xc120;&#xd0dd;&#xd569;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='moveleft'>&#xc120;&#xd0dd; &#xd574;&#xc81c; &#xb2e8;&#xcd94; - &#xd604;&#xc7ac; &#xc120;&#xd0dd;&#xd55c; &#xd56d;&#xbaa9;&#xc744; &#xc120;&#xd0dd;&#xd55c; &#xc0c1;&#xc790;&#xc5d0;&#xc11c; &#xc81c;&#xac70;&#xd569;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='moveallleft'>&#xbaa8;&#xb450; &#xc120;&#xd0dd; &#xd574;&#xc81c; &#xb2e8;&#xcd94; - &#xc120;&#xd0dd;&#xd55c; &#xc0c1;&#xc790;&#xc5d0;&#xc11c; &#xbaa8;&#xb4e0; &#xd56d;&#xbaa9;&#xc744; &#xc81c;&#xac70;&#xd569;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='showchoices'>&#xc120;&#xd0dd; &#xd56d;&#xbaa9; &#xd45c;&#xc2dc;</xsl:variable>
<xsl:variable name='sortascending'>&#xc624;&#xb984;&#xcc28;&#xc21c; &#xc815;&#xb82c;</xsl:variable>
<xsl:variable name='sortdescending'>&#xb0b4;&#xb9bc;&#xcc28;&#xc21c; &#xc815;&#xb82c;</xsl:variable>
<xsl:variable name='scrollup'>&#xc704;&#xb85c; &#xc2a4;&#xd06c;&#xb864;</xsl:variable>
<xsl:variable name='scrolldown'>&#xc544;&#xb798;&#xb85c; &#xc2a4;&#xd06c;&#xb864;</xsl:variable>
<xsl:variable name='expanddrawer'>&#xd655;&#xc7a5;</xsl:variable>
<xsl:variable name='collapsedrawer'>&#xcd95;&#xc18c;</xsl:variable>
<xsl:variable name='collapsenav'>&#xd0d0;&#xc0c9; &#xcc3d; &#xcd95;&#xc18c;</xsl:variable>
<xsl:variable name='expandnav'>&#xd0d0;&#xc0c9; &#xcc3d; &#xd655;&#xc7a5;</xsl:variable>
<xsl:variable name='resizenav'>&#xd0d0;&#xc0c9; &#xcc3d; &#xd06c;&#xae30; &#xc870;&#xc815;</xsl:variable>
<xsl:variable name='resizetaskpane'>Task &#xcc3d; &#xd06c;&#xae30; &#xc870;&#xc815;</xsl:variable>
<xsl:variable name='spinner'>&#xad00;&#xb828; &#xac12; &#xc99d;&#xac00;/&#xac10;&#xc18c;</xsl:variable>
<xsl:variable name='firstpage'>&#xccab; &#xd398;&#xc774;&#xc9c0;</xsl:variable>
<xsl:variable name='previouspage'>&#xc774;&#xc804; &#xd398;&#xc774;&#xc9c0;</xsl:variable>
<xsl:variable name='nextpage'>&#xb2e4;&#xc74c; &#xd398;&#xc774;&#xc9c0;</xsl:variable>
<xsl:variable name='lastpage'>&#xb9c8;&#xc9c0;&#xb9c9; &#xd398;&#xc774;&#xc9c0;</xsl:variable>
<xsl:variable name='singlerowselection'>&#xb2e8;&#xc77c; &#xd589; &#xc120;&#xd0dd;</xsl:variable>
<xsl:variable name='multiplerowselection'>&#xc5ec;&#xb7ec; &#xd589; &#xc120;&#xd0dd;</xsl:variable>
<xsl:variable name='allrowselection'>&#xc804;&#xccb4; &#xd589; &#xc120;&#xd0dd;</xsl:variable>
<xsl:variable name='increaseindentation'>&#xb4e4;&#xc5ec;&#xc4f0;&#xae30;</xsl:variable>
<xsl:variable name='decreaseindentation'>&#xb0b4;&#xc5b4;&#xc4f0;&#xae30;</xsl:variable>
<xsl:variable name='leaf'>&#xb9ac;&#xd504;</xsl:variable>
<xsl:variable name='expandtree'>&#xd2b8;&#xb9ac; &#xd56d;&#xbaa9; &#xd655;&#xc7a5;</xsl:variable>
<xsl:variable name='collapsetree'>&#xd2b8;&#xb9ac; &#xd56d;&#xbaa9; &#xcd95;&#xc18c;</xsl:variable>
<xsl:variable name='togglepane'>&#xcc3d; &#xc0c1;&#xd0dc; &#xc804;&#xd658;</xsl:variable>
<xsl:variable name='closepane'>&#xcc3d; &#xb2eb;&#xae30;</xsl:variable>
<xsl:variable name='msgRequiredField'>&#xd544;&#xc218; &#xd544;&#xb4dc;</xsl:variable>
<xsl:variable name='msgRequiredFieldsNotice'>&#xd544;&#xc218; &#xd544;&#xb4dc;</xsl:variable>
<xsl:variable name='moveto_move'>&#xc774;&#xb3d9;</xsl:variable>
<xsl:variable name='moveto_above'>&#xc704;</xsl:variable>
<xsl:variable name='moveto_below'>&#xc544;&#xb798;</xsl:variable>
<xsl:variable name='moveto_rownum'>&#xd589; &#xbc88;&#xd638;</xsl:variable>
<xsl:variable name='moveto_moveto'>&#xc774;&#xb3d9;</xsl:variable>
<xsl:variable name='applynew'>&#xc0c8; &#xc124;&#xc815; &#xc801;&#xc6a9;</xsl:variable>
<xsl:variable name='emptyrow'>&#xb514;&#xc2a4;&#xd50c;&#xb808;&#xc774;&#xd560; &#xb370;&#xc774;&#xd130;&#xac00; &#xc5c6;&#xc74c;</xsl:variable>
<xsl:variable name='more'>&#xc790;&#xc138;&#xd788;</xsl:variable>
<xsl:variable name='less'>&#xac04;&#xb2e8;&#xd788;</xsl:variable>
<xsl:variable name='loading'>&#xb85c;&#xb529;&#xc911;</xsl:variable>
<xsl:variable name='moveabsolute'>&#xc120;&#xd0dd;&#xd56d;&#xbaa9;&#xc744; &#xd2b9;&#xc815; &#xc704;&#xce58;&#xb85c; &#xc6c0;&#xc9c1;&#xc784;</xsl:variable>
<xsl:variable name='showdatepicker'>&#xb0a0;&#xc9dc;&#xc120;&#xd0dd;&#xae30;&#xb97c; &#xb514;&#xc2a4;&#xd50c;&#xb808;&#xc774;</xsl:variable>
<xsl:variable name='showpreviousmonth'>&#xc774;&#xc804; &#xb2ec; &#xb514;&#xc2a4;&#xd50c;&#xb808;&#xc774;</xsl:variable>
<xsl:variable name='shownextmonth'>&#xb2e4;&#xc74c; &#xb2ec; &#xb514;&#xc2a4;&#xd50c;&#xb808;&#xc774;</xsl:variable>
<xsl:variable name='msgVerifyingLogin'>&#xd655;&#xc778;&#xc911;</xsl:variable>
<xsl:variable name='all'>&#xbaa8;&#xb450;</xsl:variable>
<xsl:variable name='msgReorderError'>&#xba85;&#xc2dc;&#xb41c; &#xc5f4; &#xbc88;&#xd638;&#xac00; &#xc874;&#xc7ac;&#xd558;&#xc9c0; &#xc54a;&#xc2b5;&#xb2c8;&#xb2e4;</xsl:variable>
<xsl:variable name='currentpasswordprompt'>&#xd604;&#xc7ac; &#xc554;&#xd638;&#xb97c; &#xc785;&#xb825;&#xd558;&#xc2ed;&#xc2dc;&#xc624;</xsl:variable>
<xsl:variable name='newpasswordprompt'>&#xc0c8; &#xc554;&#xd638;&#xb97c; &#xc785;&#xb825;&#xd558;&#xc2ed;&#xc2dc;&#xc624;</xsl:variable>
<xsl:variable name='confirmpasswordprompt'>&#xc0c8; &#xc554;&#xd638;&#xb97c; &#xc7ac;&#xc785;&#xb825;&#xd558;&#xc2ed;&#xc2dc;&#xc624;</xsl:variable>
<xsl:variable name='save'>&#xc800;&#xc7a5;</xsl:variable>
<xsl:variable name='newwindow'>&#xc0c8; &#xc708;&#xb3c4;&#xc6b0;&#xc5d0; &#xc5f4;&#xae30;</xsl:variable>
<xsl:variable name='gettingstarted'>&#xc2dc;&#xc791;&#xd558;&#xae30;</xsl:variable>
<xsl:variable name='donotshowagain'>&#xb2e4;&#xc2dc; &#xbcf4;&#xc774;&#xc9c0; &#xb9c8;&#xc2ed;&#xc2dc;&#xc624;</xsl:variable>
<xsl:variable name='companylogo'>Cisco &#xb85c;&#xace0;</xsl:variable>
<xsl:variable name='results'>&#xacb0;&#xacfc;</xsl:variable>
<xsl:variable name='editthismodule'>&#xc774; &#xbaa8;&#xb4c8; &#xd3b8;&#xc9d1;</xsl:variable>
<xsl:variable name='remove'>&#xc81c;&#xac70;</xsl:variable>
<xsl:variable name='loginproblem'>&#xb85c;&#xadf8;&#xc778;&#xc5d0; &#xbb38;&#xc81c;&#xac00; &#xc788;&#xc2b5;&#xb2c8;&#xae4c;?</xsl:variable>
<xsl:variable name='expandpane'>&#xd655;&#xc7a5;</xsl:variable>
<xsl:variable name='collapsepane'>&#xcd95;&#xc18c;</xsl:variable>
<xsl:variable name='restorepane'>&#xbcf5;&#xc6d0;</xsl:variable>
<xsl:variable name='dateselectionmonth'>&#xb370;&#xc774;&#xd130; &#xc120;&#xd0dd; &#xc6d4;</xsl:variable>
<xsl:variable name='dateselectionday'>&#xb370;&#xc774;&#xd130; &#xc120;&#xd0dd; &#xc77c;</xsl:variable>
<xsl:variable name='dateselectionyear'>&#xb370;&#xc774;&#xd130; &#xc120;&#xd0dd; &#xc5f0;&#xb3c4;</xsl:variable>
<xsl:variable name='timeselectionhour'>&#xc2dc;&#xac04; &#xc120;&#xd0dd; &#xc2dc;&#xac04;</xsl:variable>
<xsl:variable name='timeselectionminute'>&#xc2dc;&#xac04; &#xc120;&#xd0dd; &#xbd84;</xsl:variable>
<xsl:variable name='timeselectionampm'>&#xc2dc;&#xac04; &#xc120;&#xd0dd; &#xc624;&#xc804; &#xb610;&#xb294; &#xc624;&#xd6c4;</xsl:variable>
<xsl:variable name='and'>&#xbc0f;</xsl:variable>
<xsl:variable name='or'>&#xb610;&#xb294;</xsl:variable>
<xsl:variable name='addfilter'>&#xd544;&#xd130; &#xcd94;&#xac00;</xsl:variable>
<xsl:variable name='removefilter'>&#xd544;&#xd130; &#xc81c;&#xac70;</xsl:variable>
<xsl:variable name='filterrelationship'>&#xd544;&#xd130; &#xad00;&#xacc4;</xsl:variable>
<xsl:variable name='signin'>&#xb4f1;&#xb85d;</xsl:variable>
<xsl:variable name='signout'>&#xb4f1;&#xb85d; &#xd574;&#xc81c;</xsl:variable>
<xsl:variable name='submenu'>&#xd558;&#xc704; &#xba54;&#xb274;</xsl:variable>
<xsl:variable name='gotopage1'>1&#xd398;&#xc774;&#xc9c0;&#xb85c; &#xc774;&#xb3d9;</xsl:variable>
<xsl:variable name='gotopage2'>2&#xd398;&#xc774;&#xc9c0;&#xb85c; &#xc774;&#xb3d9;</xsl:variable>
<xsl:variable name='gotopage3'>3&#xd398;&#xc774;&#xc9c0;&#xb85c; &#xc774;&#xb3d9;</xsl:variable>
<xsl:variable name='gotopage4'>4&#xd398;&#xc774;&#xc9c0;&#xb85c; &#xc774;&#xb3d9;</xsl:variable>
<xsl:variable name='gotopage5'>5&#xd398;&#xc774;&#xc9c0;&#xb85c; &#xc774;&#xb3d9;</xsl:variable>
<xsl:variable name='gotopage6'>6&#xd398;&#xc774;&#xc9c0;&#xb85c; &#xc774;&#xb3d9;</xsl:variable>
<xsl:variable name='gotopage7'>7&#xd398;&#xc774;&#xc9c0;&#xb85c; &#xc774;&#xb3d9;</xsl:variable>
<xsl:variable name='gotopage8'>8&#xd398;&#xc774;&#xc9c0;&#xb85c; &#xc774;&#xb3d9;</xsl:variable>
<xsl:variable name='gotopage9'>9&#xd398;&#xc774;&#xc9c0;&#xb85c; &#xc774;&#xb3d9;</xsl:variable>
<xsl:variable name='gotopage10'>10&#xd398;&#xc774;&#xc9c0;&#xb85c; &#xc774;&#xb3d9;</xsl:variable>
<xsl:variable name='refresh'>&#xc0c8;&#xb85c; &#xace0;&#xce68;</xsl:variable>
<xsl:variable name='status'>&#xc0c1;&#xd0dc;</xsl:variable>
<xsl:variable name='togglefilters'>&#xd544;&#xd130; &#xd45c;&#xc2dc; &#xc124;&#xc815;/&#xd574;&#xc81c;</xsl:variable>
<xsl:variable name='itemsselected'>&#xd56d;&#xbaa9;&#xc774; &#xc120;&#xd0dd;&#xb428;</xsl:variable>
<xsl:variable name='bulkvisible'>&#xd45c;&#xc2dc;&#xb418;&#xb294; xxx &#xd589;&#xc774; &#xbaa8;&#xb450; &#xc120;&#xd0dd;&#xb418;&#xc5c8;&#xc2b5;&#xb2c8;&#xb2e4;.</xsl:variable>
<xsl:variable name='bulktotal'>&#xbaa8;&#xb4e0; xxx &#xd589; &#xc120;&#xd0dd;</xsl:variable>
<xsl:variable name='informationalmessage'>&#xc815;&#xbcf4; &#xba54;&#xc2dc;&#xc9c0;</xsl:variable>
<xsl:variable name='criticalerrormessage'>&#xc911;&#xb300;&#xd55c; &#xc624;&#xb958; &#xba54;&#xc2dc;&#xc9c0;</xsl:variable>
<xsl:variable name='errormessage'>&#xc624;&#xb958; &#xba54;&#xc2dc;&#xc9c0;</xsl:variable>
<xsl:variable name='warningmessage'>&#xacbd;&#xace0; &#xba54;&#xc2dc;&#xc9c0;</xsl:variable>
<xsl:variable name='successmessage'>&#xc131;&#xacf5; &#xba54;&#xc2dc;&#xc9c0;</xsl:variable>
<xsl:variable name='alert'>&#xacbd;&#xace0;</xsl:variable>
<xsl:variable name='confirm'>&#xd655;&#xc778;</xsl:variable>
<xsl:variable name='prompt'>&#xd504;&#xb86c;&#xd504;&#xd2b8;</xsl:variable>
<xsl:variable name='yes'>&#xc608;</xsl:variable>
<xsl:variable name='no'>&#xc544;&#xb2c8;&#xc624;</xsl:variable>
<xsl:variable name='expandwindow'>&#xcd94;&#xac00; &#xd56d;&#xbaa9;&#xc744; &#xbcf4;&#xb824;&#xba74; &#xcc3d;&#xc744; &#xd655;&#xc7a5;&#xd569;&#xb2c8;&#xb2e4;</xsl:variable>
<xsl:variable name='messagenumber'>&#xba54;&#xc2dc;&#xc9c0; &#xbc88;&#xd638;</xsl:variable>
<xsl:variable name='rssfeed'>RSS &#xd53c;&#xb4dc;</xsl:variable>
</xsl:stylesheet>