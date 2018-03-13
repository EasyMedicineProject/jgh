<%@ page import="Models.LoginModel" %><%--
  Created by IntelliJ IDEA.
  User: panay
  Date: 27-Jan-18
  Time: 7:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html id="background">
<head>
    <meta charset = "UTF-8"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/MainStyle.css">
    <link rel="stylesheet" type="text/css" href="css/LoginStyle.css">
    <link rel="stylesheet" type="text/css" href="css/NewNavbar.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Easy Medicine</title>

    <script>
        window.addEventListener("pageshow", function (event) {
            if (event.persisted) {
                window.location.replace("http://"+window.location.href.split('/')[2]+"/map.jsp");

            }
        });
    </script>
</head>
<body>
<script>
    window.addEventListener("pageshow", function (event) {
        if (window.location=="http://localhost:8080/") {
            window.location.replace("http://localhost:8080/index.jsp");

        }
    });
</script>
    <header>
        <!--<div class="row">
            <div class="col-lg-12">-->
        <nav class="nav-xbootstrap navbar navbar-default visible-xs-block" id="navigation">
            <div class="container">
                <div class="navbar-header">
                    <a href="/index.jsp"><img class="logo-navbar" src="images/EM%20logo.png"></a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav nav-test">
                        <!--<li class="nav-item navigation" style="color:white;"><a href="#">Начало</a></li>-->
                        <li id="symptoms" class="dropdown nav-item navigation">
                            <a href="#">
                                <!--<span class="glyphicon glyphicon-grain"></span>--> Симптоми <span class="caret"></span>
                            </a>
                            <ul class="dropdown multi-column columns-3" role="button">
                                <div class="row">
                                    <div class="col-md-4">
                                        <ul class="dropdown multi-column-dropdown symptoms">
                                            <li><a href="/search?search=Безсъние"><span class=""></span>Безсъние</a></li>
                                            <li><a href="/search?search=Белези"><span class=""></span>Белези</a></li>
                                            <li><a href="/search?search=Болки в корема"><span class=""></span>Болки в корема</a></li>
                                            <li><a href="/search?search=Болки в мускулите"><span class=""></span>Болки в мускулите</a></li>
                                            <li><a href="/search?search=Болки в областта на лицето"><span class=""></span>Болки в областта на лицето</a></li>
                                            <li><a href="/search?search=Болки в ставите"><span class=""></span>Болки в ставите</a></li>
                                            <li><a href="/search?search=Болки в ушите"><span class=""></span>Болки в ушите</a></li>
                                            <li><a href="/search?search=Висока температура"><span class=""></span>Висока температура</a></li>
                                            <li><a href="/search?search=Възпалено и болезнено гърло"><span class=""></span>Възпалено и болезнено гърло</a></li>
                                            <li><a href="/search?search=Гадене"><span class=""></span>Гадене</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="dropdown multi-column-dropdown symptoms">
                                            <li><a href="/search?search=Газове"><span class=""></span>Газове</a></li>
                                            <li><a href="/search?search=Главоболие"><span class=""></span>Главоболие</a></li><li><a href="/search?search=Дразнене на гърлото"><span class=""></span>Дразнене на гърлото</a></li>
                                            <li><a href="/search?search=Запек"><span class=""></span>Запек</a></li>
                                            <li><a href="/search?search=Запушен нос"><span class=""></span>Запушен нос</a></li>
                                            <li><a href="/search?search=Запушени уши"><span class=""></span>Запушени уши</a></li>
                                            <li><a href="/search?search=Зачервена кожа"><span class=""></span>Зачервена кожа</a></li>
                                            <li><a href="/search?search=Кашлица"><span class=""></span>Кашлица</a></li>
                                            <li><a href="/search?search=Липса на концентрация"><span class=""></span>Липса на концентрация</a></li>
                                            <li><a href="/search?search=Лошо храносмилане"><span class=""></span>Лошо храносмилане</a></li>

                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="dropdown multi-column-dropdown symptoms">
                                            <li><a href="/search?search=Намалено обоняние"><span class=""></span>Намалено обоняние</a></li>
                                            <li><a href="/search?search=Нервност"><span class=""></span>Нервност</a></li>
                                            <li><a href="/search?search=Повръщане"><span class=""></span>Повръщане</a></li>
                                            <li><a href="/search?search=Пърхот"><span class=""></span>Пърхот</a></li>
                                            <li><a href="/search?search=Секреция от носа"><span class=""></span>Секреция от носа</a></li>
                                            <li><a href="/search?search=Сухи и уморени очи"><span class=""></span>Сухи и уморени очи</a></li>
                                            <li><a href="/search?search=Сърбеж на кожата"><span class=""></span>Сърбеж на кожата</a></li>
                                            <li><a href="/search?search=Чувство на умора"><span class=""></span>Чувство на умора</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </ul>
                        </li>

                        <li class="dropdown nav-item navigation">
                            <a href="#" role="button">
                                Болести <span class="caret"></span>
                            </a>

                            <ul class="dropdown multi-column columns-2" role="button">
                                <div class="row">
                                    <div class="col-md-6">
                                        <ul class="dropdown multi-column-dropdown diseases">
                                            <li><a href="/search?search=Грип"><span class=""></span>Грип</a></li>
                                            <li><a href="/search?search=Зависимост от тютюнопушене"><span class=""></span>Зависимост от тютюнопушене</a></li>
                                            <li><a href="/search?search=Изпотяване"><span class=""></span>Изпотяване</a></li>
                                            <li><a href="/search?search=Косопад"><span class=""></span>Косопад</a></li>
                                            <li><a href="/search?search=Липса на апетит"><span class=""></span>Липса на апетит</a></li>
                                            <li><a href="/search?search=Липса на памет"><span class=""></span>Липса на памет</a></li>
                                            <li><a href="/search?search=Наднормено тегло"><span class=""></span>Наднормено тегло</a></li>
                                            <li><a href="/search?search=Пречистване на черния дроб"><span class=""></span>Пречистване на черния дроб</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6">
                                        <ul class="dropdown multi-column-dropdown diseases">
                                            <li><a href="/search?search=Разширени вени"><span class=""></span>Разширени вени</a></li>
                                            <li><a href="/search?search=Синузит"><span class=""></span>Синузит</a></li>
                                            <li><a href="/search?search=Слаб имунитет"><span class=""></span>Слаб имунитет</a></li>
                                            <li><a href="/search?search=Стрии"><span class=""></span>Стрии</a></li>
                                            <li><a href="/search?search=Уголемена простата"><span class=""></span>Уголема простата</a></li>
                                            <li><a href="/search?search=Хемороиди"><span class=""></span>Хемороиди</a></li>
                                            <li><a href="/search?search=Хъркане"><span class=""></span>Хъркане</a></li>
                                            <li><a href="/search?search=Цистит"><span class=""></span>Цистит</a></li>
                                            <li><a href="/search?search=Чупливи нокти"><span class=""></span>Чупливи нокти</a></li>
                                            <li><a href="/search?search=Шум в ушите"><span class=""></span>Шум в ушите</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </ul>
                        </li>

                        <li class="nav-item navigation"><a href="/map.jsp">Карта</a></li>
                    </ul>
                    <form method="GET" action="search" class="navbar-form navbar-left" role="search">
                        <div class="form-group form-group-lg">
                            <input id="searchBox" type="search" name="search" class="form-control searchBox" placeholder="Търси...">
                        </div>
                        <button type="submit" id="searchBtn" class="btn btn-default btn-lg">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </form>

                    <%
                        System.out.println("(Before if)Index: isLogged = " + session.getAttribute("isLogged"));
                        if (session.getAttribute("isLogged") != null){
                            if ((Boolean) session.getAttribute("isLogged")) {
                    %>
                    <!--<ul class="nav navbar-nav navbar-right">
                        <li class="nav-item navigation">
                            <form method="POST" action="index">
                                <input type="submit" class="button" value="Изход">
                            </form>
                        </li>
                        <li class="nav-item navigation">
                            <form action="/myAccount" method="POST">
                                <input type="submit" class="button" value="Моят акаунт">
                            </form>
                        </li>
                    </ul>-->
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="loginDropdown"><img id="dropdown-image" src="images/user.png"/> <span class="caret"></span></a>
                            <ul id="login-dp" class="dropdown-menu">
                                <li class="nav-item navigation">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <form class="form" action="/myAccount" id="login-nav" method="GET">
                                                <input type="submit" class="button form-control" value="Моят акаунт">
                                            </form>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item navigation" style="margin-bottom:20px;">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <form class="form" method="POST" id="login-nav"  action="index">
                                                <input type="submit" class="button form-control" value="Изход">
                                            </form>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>


                    <% System.out.println("(After if) Index: isLogged = " + session.getAttribute("isLogged"));
                    }
                    else {%>
                    System.out.println("v mrysniq if sym");%>
                    <!-- <ul class="nav navbar-nav navbar-right">
                         <li class="nav-item navigation">
                             <form method="POST" action="login.jsp">
                                 <input type="submit" class="button" value="Вход">
                             </form>
                         </li>
                         <li class="nav-item navigation">
                             <form action="registration.jsp">
                                 <input type="submit" class="button" value="Регистрирай се">
                             </form>
                         </li>
                     </ul>-->



                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle loginDropdown" data-toggle="dropdown"><b>Вход</b> <span class="caret"></span></a>
                            <ul id="login-dp" class="dropdown">
                                <li>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 style="text-align: center">Вход</h4><hr/>
                                            <form class="form" role="form" method="post" action="index" accept-charset="UTF-8" id="login-nav">
                                                <div class="form-group">
                                                    <label id="icon" for="email"><i class="fa fa-envelope"></i></label>
                                                    <input type="text" placeholder="Username или имейл" class="form-control" name="email" id="email" style="display: inline;" required/>
                                                </div>
                                                <div class="form-group">
                                                    <label id="icon" for="password"><i class="fa fa-key"></i></label>
                                                    <input type="password" class="form-control loginText" name="password" id="password" placeholder="Парола" style="display: inline;" required/>
                                                    <!--<div class="help-block text-right"><a href="">Forget the password ?</a></div>-->
                                                </div>
                                                <div class="checkbox" id="rememberCheck">
                                                    <label class="containerCheckbox" for="rememberMe">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Запомни ме
                                                        <br/><input type="checkbox" name="rememberMe" id="rememberMe"/>
                                                        <span class="checkmark"></span>
                                                    </label>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-block" id="loginButton">Влез</button>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="bottom text-center">
                                            Нямаш регистрация? <br/><button onclick="location.href='/registration.jsp'" class="regBtn"><b>Регистрирай се</b></button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <% }
                    }
                    else if(session.getAttribute("isLogged") == null){
                        System.out.println("v ifa sum za isLogged=null");
                        //System.out.println("cookie 0 name: " + request.getCookies()[0].getValue());
                        //System.out.println("cookie 1 name: " + request.getCookies()[1].getValue());
                        //System.out.println("cookie 2 name: " + request.getCookies()[2].getValue());
                        //System.out.println("cookie 3 name: " + request.getCookies()[3].getValue());
                        Cookie[] cookies = request.getCookies();
                        if(cookies!=null && cookies.length > 1){
                            System.out.println("v ifa sum za cookie");

                            System.out.println("(jsp) array lenght: " + cookies.length);
                            int i=0;
                            String usernameCookieValue=null;
                            String passwordCookieValue=null;
                            for (Cookie cookie:cookies) {
                                if(cookies[i].getName().equals("username"))usernameCookieValue = cookies[i].getValue();
                                else if(cookies[i].getName().equals("password"))passwordCookieValue = cookies[i].getValue();
                                System.out.println("JSP Current cookie name: " + usernameCookieValue);
                                System.out.println("JSP Current cookie value: " + passwordCookieValue);
                                i++;
                                System.out.println("i = " + i + ";");
                            }
                            System.out.println("Username cookie value = " + usernameCookieValue);
                            System.out.println("Password cookie value = " + passwordCookieValue);
                            if(usernameCookieValue!=null && passwordCookieValue!=null) {
                                session.setAttribute("isLogged", true);
                                session.setAttribute("username", usernameCookieValue);
                                LoginModel model = new LoginModel();
                                session.setAttribute("email", model.getEmail(usernameCookieValue));
                                session.setAttribute("gender", model.getGender(usernameCookieValue));
                    %>
                    <!--<ul class="nav navbar-nav navbar-right">
                        <li class="nav-item navigation">
                            <form method="POST" action="index">
                                <input type="submit" class="button" value="Изход">
                            </form>
                        </li>
                        <li class="nav-item navigation">
                            <form action="/myAccount" method="POST">
                                <input type="submit" class="button" value="Моят акаунт">
                            </form>
                        </li>
                    </ul>-->
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="loginDropdown"><img id="dropdown-image" src="images/user.png"/> <span class="caret"></span></a>
                            <ul id="login-dp" class="dropdown-menu">
                                <li class="nav-item navigation">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <form class="form" method="POST" id="login-nav"  action="index">
                                                <input type="submit" class="button form-control" value="Изход">
                                            </form>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item navigation" style="margin-bottom:20px;>
                                    <div class="row">
                                <div class="col-md-12">
                                    <form class="form" action="/myAccount" id="login-nav" method="GET">
                                        <input type="submit" class="button form-control" value="Моят акаунт">
                                    </form>
                                </div>
                                </li>
                            </ul>
                        </li>
                    </ul>


                    <%}
                    }
                    else{
                        System.out.println("v else sum za not logged");
                    %>


                    <!--<ul class="nav navbar-nav navbar-right">
                        <li class="nav-item navigation">
                            <form method="POST" action="login.jsp">
                                <input type="submit" class="button" value="Вход">
                            </form>
                        </li>
                        <li class="nav-item navigation">
                            <form action="registration.jsp">
                                <input type="submit" class="button" value="Регистрирай се">
                            </form>
                        </li>
                    </ul>-->
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle loginDropdown" data-toggle="dropdown"><b>Вход</b> <span class="caret"></span></a>
                            <ul id="login-dp" class="dropdown-menu">
                                <li>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 style="text-align: center">Вход</h4><hr/>
                                            <form class="form" role="form" method="post" action="index" accept-charset="UTF-8" id="login-nav">
                                                <div class="form-group">
                                                    <label id="icon" for="email"><i class="fa fa-envelope"></i></label>
                                                    <input type="text" placeholder="Username или имейл" class="form-control" name="email" id="email" style="display: inline;" required/>
                                                </div>
                                                <div class="form-group">
                                                    <label id="icon" for="password"><i class="fa fa-key"></i></label>
                                                    <input type="password" class="form-control loginText" name="password" id="password" placeholder="Парола" style="display: inline;" required/>
                                                    <!--<div class="help-block text-right"><a href="">Forget the password ?</a></div>-->
                                                </div>
                                                <div class="checkbox" id="rememberCheck">
                                                    <label class="containerCheckbox" for="rememberMe">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Запомни ме
                                                        <br/><input type="checkbox" name="rememberMe" id="rememberMe"/>
                                                        <span class="checkmark"></span>
                                                    </label>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-block" id="loginButton">Влез</button>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="bottom text-center">
                                            Нямаш регистрация?<br/> <button onclick="location.href='/registration.jsp'" class="regBtn"><b>Регистрирай се</b></button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <%
                            }
                        }
                    %>

                    <!--</div>
                     </div>-->
                </div>
            </div>
        </nav>
        <nav class="nav-xbootstrap navbar navbar-fixed-top navbar-default hidden-xs" id="navigation">
            <div class="container">
                <div class="navbar-header">
                    <a href="/index.jsp"><img class="logo-navbar" src="images/EM%20logo.png"></a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav nav-test">
                        <!--<li class="nav-item navigation" style="color:white;"><a href="#">Начало</a></li>-->
                        <li id="symptoms" class="dropdown nav-item navigation">
                            <a href="#">
                                <!--<span class="glyphicon glyphicon-grain"></span>--> Симптоми <span class="caret"></span>
                            </a>
                            <ul class="dropdown multi-column columns-3" role="button">
                                <div class="row">
                                    <div class="col-md-4">
                                        <ul class="dropdown multi-column-dropdown symptoms">
                                            <li><a href="/search?search=Безсъние"><span class=""></span>Безсъние</a></li>
                                            <li><a href="/search?search=Белези"><span class=""></span>Белези</a></li>
                                            <li><a href="/search?search=Болки в корема"><span class=""></span>Болки в корема</a></li>
                                            <li><a href="/search?search=Болки в мускулите"><span class=""></span>Болки в мускулите</a></li>
                                            <li><a href="/search?search=Болки в областта на лицето"><span class=""></span>Болки в областта на лицето</a></li>
                                            <li><a href="/search?search=Болки в ставите"><span class=""></span>Болки в ставите</a></li>
                                            <li><a href="/search?search=Болки в ушите"><span class=""></span>Болки в ушите</a></li>
                                            <li><a href="/search?search=Висока температура"><span class=""></span>Висока температура</a></li>
                                            <li><a href="/search?search=Възпалено и болезнено гърло"><span class=""></span>Възпалено и болезнено гърло</a></li>
                                            <li><a href="/search?search=Гадене"><span class=""></span>Гадене</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="dropdown multi-column-dropdown symptoms">
                                            <li><a href="/search?search=Газове"><span class=""></span>Газове</a></li>
                                            <li><a href="/search?search=Главоболие"><span class=""></span>Главоболие</a></li><li><a href="/search?search=Дразнене на гърлото"><span class=""></span>Дразнене на гърлото</a></li>
                                            <li><a href="/search?search=Запек"><span class=""></span>Запек</a></li>
                                            <li><a href="/search?search=Запушен нос"><span class=""></span>Запушен нос</a></li>
                                            <li><a href="/search?search=Запушени уши"><span class=""></span>Запушени уши</a></li>
                                            <li><a href="/search?search=Зачервена кожа"><span class=""></span>Зачервена кожа</a></li>
                                            <li><a href="/search?search=Кашлица"><span class=""></span>Кашлица</a></li>
                                            <li><a href="/search?search=Липса на концентрация"><span class=""></span>Липса на концентрация</a></li>
                                            <li><a href="/search?search=Лошо храносмилане"><span class=""></span>Лошо храносмилане</a></li>

                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="dropdown multi-column-dropdown symptoms">
                                            <li><a href="/search?search=Намалено обоняние"><span class=""></span>Намалено обоняние</a></li>
                                            <li><a href="/search?search=Нервност"><span class=""></span>Нервност</a></li>
                                            <li><a href="/search?search=Повръщане"><span class=""></span>Повръщане</a></li>
                                            <li><a href="/search?search=Пърхот"><span class=""></span>Пърхот</a></li>
                                            <li><a href="/search?search=Секреция от носа"><span class=""></span>Секреция от носа</a></li>
                                            <li><a href="/search?search=Сухи и уморени очи"><span class=""></span>Сухи и уморени очи</a></li>
                                            <li><a href="/search?search=Сърбеж на кожата"><span class=""></span>Сърбеж на кожата</a></li>
                                            <li><a href="/search?search=Чувство на умора"><span class=""></span>Чувство на умора</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </ul>
                        </li>

                        <li class="dropdown nav-item navigation">
                            <a href="#" role="button">
                                Болести <span class="caret"></span>
                            </a>

                            <ul class="dropdown multi-column columns-2" role="button">
                                <div class="row">
                                    <div class="col-md-6">
                                        <ul class="dropdown multi-column-dropdown diseases">
                                            <li><a href="/search?search=Акне"><span class=""></span>Акне</a></li>

                                            <li><a href="/search?search=Грип"><span class=""></span>Грип</a></li>
                                            <li><a href="/search?search=Диария"><span class=""></span>Диария</a></li>
                                            <li><a href="/search?search=Зависимост от тютюнопушене"><span class=""></span>Зависимост от тютюнопушене</a></li>
                                            <li><a href="/search?search=Изпотяване"><span class=""></span>Изпотяване</a></li>
                                            <li><a href="/search?search=Косопад"><span class=""></span>Косопад</a></li>
                                            <li><a href="/search?search=Липса на апетит"><span class=""></span>Липса на апетит</a></li>
                                            <li><a href="/search?search=Липса на памет"><span class=""></span>Липса на памет</a></li>
                                            <li><a href="/search?search=Наднормено тегло"><span class=""></span>Наднормено тегло</a></li>
                                            <li><a href="/search?search=Пречистване на черния дроб"><span class=""></span>Пречистване на черния дроб</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6">
                                        <ul class="dropdown multi-column-dropdown diseases">
                                            <li><a href="/search?search=Разширени вени"><span class=""></span>Разширени вени</a></li>
                                            <li><a href="/search?search=Синузит"><span class=""></span>Синузит</a></li>
                                            <li><a href="/search?search=Слаб имунитет"><span class=""></span>Слаб имунитет</a></li>
                                            <li><a href="/search?search=Стрии"><span class=""></span>Стрии</a></li>
                                            <li><a href="/search?search=Уголемена простата"><span class=""></span>Уголема простата</a></li>
                                            <li><a href="/search?search=Хемороиди"><span class=""></span>Хемороиди</a></li>
                                            <li><a href="/search?search=Хъркане"><span class=""></span>Хъркане</a></li>
                                            <li><a href="/search?search=Цистит"><span class=""></span>Цистит</a></li>
                                            <li><a href="/search?search=Чупливи нокти"><span class=""></span>Чупливи нокти</a></li>
                                            <li><a href="/search?search=Шум в ушите"><span class=""></span>Шум в ушите</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </ul>
                        </li>

                        <li class="nav-item navigation"><a href="/map.jsp">Карта</a></li>
                    </ul>
                    <form method="GET" action="search" class="navbar-form navbar-left" role="search">
                        <div class="form-group form-group-lg">
                            <input id="searchBox" type="search" name="search" class="form-control searchBox" placeholder="Търси...">
                        </div>
                        <button type="submit" id="searchBtn" class="btn btn-default btn-lg">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </form>

                    <%
                        System.out.println("(Before if)Index: isLogged = " + session.getAttribute("isLogged"));
                        if (session.getAttribute("isLogged") != null){
                            if ((Boolean) session.getAttribute("isLogged")) {
                    %>
                    <!--<ul class="nav navbar-nav navbar-right">
                        <li class="nav-item navigation">
                            <form method="POST" action="index">
                                <input type="submit" class="button" value="Изход">
                            </form>
                        </li>
                        <li class="nav-item navigation">
                            <form action="/myAccount" method="POST">
                                <input type="submit" class="button" value="Моят акаунт">
                            </form>
                        </li>
                    </ul>-->
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="loginDropdown"><img id="dropdown-image" src="images/user.png"/> <span class="caret"></span></a>
                            <ul id="login-dp" class="dropdown-menu">
                                <li class="nav-item navigation">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <form class="form" action="/myAccount" id="login-nav" method="GET">
                                                <input type="submit" class="button form-control" value="Моят акаунт">
                                            </form>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item navigation" style="margin-bottom:20px;">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <form class="form" method="POST" id="login-nav"  action="index">
                                                <input type="submit" class="button form-control" value="Изход">
                                            </form>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>


                    <% System.out.println("(After if) Index: isLogged = " + session.getAttribute("isLogged"));
                    }
                    else {%>
                    System.out.println("v mrysniq if sym");%>
                    <!-- <ul class="nav navbar-nav navbar-right">
                         <li class="nav-item navigation">
                             <form method="POST" action="login.jsp">
                                 <input type="submit" class="button" value="Вход">
                             </form>
                         </li>
                         <li class="nav-item navigation">
                             <form action="registration.jsp">
                                 <input type="submit" class="button" value="Регистрирай се">
                             </form>
                         </li>
                     </ul>-->



                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle loginDropdown" data-toggle="dropdown"><b>Вход</b> <span class="caret"></span></a>
                            <ul id="login-dp" class="dropdown">
                                <li>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 style="text-align: center">Вход</h4><hr/>
                                            <form class="form" role="form" method="post" action="index" accept-charset="UTF-8" id="login-nav">
                                                <div class="form-group">
                                                    <label id="icon" for="email"><i class="fa fa-envelope"></i></label>
                                                    <input type="text" placeholder="Username или имейл" class="form-control" name="email" id="email" style="display: inline;" required/>
                                                </div>
                                                <div class="form-group">
                                                    <label id="icon" for="password"><i class="fa fa-key"></i></label>
                                                    <input type="password" class="form-control loginText" name="password" id="password" placeholder="Парола" style="display: inline;" required/>
                                                    <!--<div class="help-block text-right"><a href="">Forget the password ?</a></div>-->
                                                </div>
                                                <div class="checkbox" id="rememberCheck">
                                                    <label class="containerCheckbox" for="rememberMe">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Запомни ме
                                                        <br/><input type="checkbox" name="rememberMe" id="rememberMe"/>
                                                        <span class="checkmark"></span>
                                                    </label>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-block" id="loginButton">Влез</button>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="bottom text-center">
                                            Нямаш регистрация? <br/><button onclick="location.href='/registration.jsp'" class="regBtn"><b>Регистрирай се</b></button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <% }
                    }
                    else if(session.getAttribute("isLogged") == null){
                        System.out.println("v ifa sum za isLogged=null");
                        //System.out.println("cookie 0 name: " + request.getCookies()[0].getValue());
                        //System.out.println("cookie 1 name: " + request.getCookies()[1].getValue());
                        //System.out.println("cookie 2 name: " + request.getCookies()[2].getValue());
                        //System.out.println("cookie 3 name: " + request.getCookies()[3].getValue());
                        Cookie[] cookies = request.getCookies();
                        if(cookies!=null && cookies.length > 1){
                            System.out.println("v ifa sum za cookie");

                            System.out.println("(jsp) array lenght: " + cookies.length);
                            int i=0;
                            String usernameCookieValue=null;
                            String passwordCookieValue=null;
                            for (Cookie cookie:cookies) {
                                if(cookies[i].getName().equals("username"))usernameCookieValue = cookies[i].getValue();
                                else if(cookies[i].getName().equals("password"))passwordCookieValue = cookies[i].getValue();
                                System.out.println("JSP Current cookie name: " + usernameCookieValue);
                                System.out.println("JSP Current cookie value: " + passwordCookieValue);
                                i++;
                                System.out.println("i = " + i + ";");
                            }
                            System.out.println("Username cookie value = " + usernameCookieValue);
                            System.out.println("Password cookie value = " + passwordCookieValue);
                            if(usernameCookieValue!=null && passwordCookieValue!=null) {
                                session.setAttribute("isLogged", true);
                                session.setAttribute("username", usernameCookieValue);
                                LoginModel model = new LoginModel();
                                session.setAttribute("email", model.getEmail(usernameCookieValue));
                                session.setAttribute("gender", model.getGender(usernameCookieValue));
                    %>
                    <!--<ul class="nav navbar-nav navbar-right">
                        <li class="nav-item navigation">
                            <form method="POST" action="index">
                                <input type="submit" class="button" value="Изход">
                            </form>
                        </li>
                        <li class="nav-item navigation">
                            <form action="/myAccount" method="POST">
                                <input type="submit" class="button" value="Моят акаунт">
                            </form>
                        </li>
                    </ul>-->
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="loginDropdown"><img id="dropdown-image" src="images/user.png"/> <span class="caret"></span></a>
                            <ul id="login-dp" class="dropdown-menu">
                                <li class="nav-item navigation">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <form class="form" method="POST" id="login-nav"  action="index">
                                                <input type="submit" class="button form-control" value="Изход">
                                            </form>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item navigation" style="margin-bottom:20px;>
                                    <div class="row">
                                <div class="col-md-12">
                                    <form class="form" action="/myAccount" id="login-nav" method="GET">
                                        <input type="submit" class="button form-control" value="Моят акаунт">
                                    </form>
                                </div>
                                </li>
                            </ul>
                        </li>
                    </ul>


                    <%}
                    }
                    else{
                        System.out.println("v else sum za not logged");
                    %>


                    <!--<ul class="nav navbar-nav navbar-right">
                        <li class="nav-item navigation">
                            <form method="POST" action="login.jsp">
                                <input type="submit" class="button" value="Вход">
                            </form>
                        </li>
                        <li class="nav-item navigation">
                            <form action="registration.jsp">
                                <input type="submit" class="button" value="Регистрирай се">
                            </form>
                        </li>
                    </ul>-->
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle loginDropdown" data-toggle="dropdown"><b>Вход</b> <span class="caret"></span></a>
                            <ul id="login-dp" class="dropdown-menu">
                                <li>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 style="text-align: center">Вход</h4><hr/>
                                            <form class="form" role="form" method="post" action="index" accept-charset="UTF-8" id="login-nav">
                                                <div class="form-group">
                                                    <label id="icon" for="email"><i class="fa fa-envelope"></i></label>
                                                    <input type="text" placeholder="Username или имейл" class="form-control" name="email" id="email" style="display: inline;" required/>
                                                </div>
                                                <div class="form-group">
                                                    <label id="icon" for="password"><i class="fa fa-key"></i></label>
                                                    <input type="password" class="form-control loginText" name="password" id="password" placeholder="Парола" style="display: inline;" required/>
                                                    <!--<div class="help-block text-right"><a href="">Forget the password ?</a></div>-->
                                                </div>
                                                <div class="checkbox" id="rememberCheck">
                                                    <label class="containerCheckbox" for="rememberMe">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Запомни ме
                                                        <br/><input type="checkbox" name="rememberMe" id="rememberMe"/>
                                                        <span class="checkmark"></span>
                                                    </label>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-block" id="loginButton">Влез</button>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="bottom text-center">
                                            Нямаш регистрация?<br/> <button onclick="location.href='/registration.jsp'" class="regBtn"><b>Регистрирай се</b></button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <%
                            }
                        }
                    %>

                    <!--</div>
                     </div>-->
                </div>
            </div>
        </nav>
    </header>

<iframe src="https://www.google.com/maps/d/u/0/embed?mid=1VoXcF4euLPmBXI-aK5M116NXlPPs116x" class="iframeMap" ></iframe>
<!--<script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=false"></script>
<article>
    <p><span id="status"></span></p>
</article>

<script>
    function success(position) {
        var s = document.querySelector('#status');

        if (s.className == 'success') {
            // not sure why we're hitting this twice in FF, I think it's to do with a cached result coming back
            return;
        }

        s.innerHTML = "";
        s.className = '';

        var mapcanvas = document.createElement('div');
        mapcanvas.id = 'mapcanvas';
        var height = screen.height*0.75;
        var width = screen.width;
        mapcanvas.style.height = height+'px';
        mapcanvas.style.width = width+'px';

        document.querySelector('article').appendChild(mapcanvas);

        var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
        var myOptions = {
            zoom: 17,
            center: latlng,
            mapTypeControl: false,
            navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("mapcanvas"), myOptions);

        var marker = new google.maps.Marker({
            position: latlng,
            map: ap,
            title:"You are here! (at least within a "+position.coords.accuracy+" meter radius)"
        });
    }

    function error(msg) {
        var s = document.querySelector('#status');
        s.innerHTML = typeof msg == 'string' ? msg : "failed";
        s.className = 'fail';

        // console.log(arguments);
    }

    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(success, error);
    } else {
        error('not supported');
    }

</script>-->
</section>
<script type="text/javascript">
    document.getElementById('searchBtn').onclick = function() {
        <%
            session.setAttribute("isSearching", true);
        %>
    }​;​
</script>
</body>
</html>







