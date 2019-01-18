<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!--indique les fonctionnalité utilisé-->
    <meta charset="utf-8">
    <!--encodage de caractère, a placer a en premier dans head !!!!!!!-->
    <title>Serie Show Connection</title>
    <!--titre de l onglet-->
    <link link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<style type="text/css">
*{
    box-sizing: border-box;
}

nav{
    padding:65px 25px 0 0;
}

body{
    background-color: #faf9f9;
    font-family: 'Open Sans Condensed', sans-serif;
    font-size: 16px;
    line-height: 1.4;
}

/*Header*/

.top{
    display: flex;
    justify-content: space-between;
    flex-direction: row;
}

nav ul{
    display: flex;
    flex-direction: row;
    margin: 10px;

}

header img{
    padding: 20px 0 0 40px;
    height: 155px;
    width: 190px;
    margin: 10px 0 2px 10px;
}

nav #menu {
    width: 100%;
    margin: 0;
    padding: 10px 0 0 0 ;
    list-style: none;
    background: #111;
    background: -moz-linear-gradient(#444, #111);
    background: -webkit-linear-gradient(#444, #111);
    background: -o-linear-gradient(#444,#111);
    background: -ms-linear-gradient(#444,#111);
    background: linear-gradient(#444, #111);
    -moz-border-radius : 10px;
    border-radius: 10px;
    -moz-box-shadow : 0 2px 1px #9c9c9c;
    -webkit-box-shadow : 0 2px 1px #9c9c9c;
    box-shadow: 0 2px 1px #9c9c9c; 

}

nav #menu li{
    float: left;
    padding: 0 0 10px 0;
    position: relative;
}

nav #menu a{
    float: left;
    height: 25px;
    padding: 0 25px;
    color: #e3e3e3;
    text-transform: uppercase;
    font: 400 13px/25px 'Dosis', sans-serif;
    /*font-weight: 400;
    line-height: 25px;
    font-size: 13px;
    font-family: 'Dosis', sans-serif;*/
    text-decoration: none;
    text-shadow: 0 1px 0 #000;
}

nav #menu li a:hover{
    color: aqua;
    font-style: italic;
}

nav #menu li:hover > ul{
    display: block;
}

nav #menu ul{
    margin: 0;
    padding: 0 ;
    list-style: none;
    display: none;
    position: absolute;
    top: 35px;
    left: 0;
    z-index: 99999;
    background: #444;
    background: -moz-linear-gradient(#444, #111);
    background: -webkit-linear-gradient(#444, #111);
    background: -o-linear-gradient(#444,#111);
    background: -ms-linear-gradient(#444,#111);
    background: linear-gradient(#444, #111);
    -moz-border-radius : 5px;
    border-radius: 5px;
   
}


nav #menu ul a{
padding: 10px 25px 10px 10px;
height: auto;
line-height: 1;
display: block;
white-space: nowrap;
float: none;
text-transform: none;
}

nav #menu ul li{
    float: none;
    margin: 0;
    padding: 0;
    display: block;
    -moz-box-shadow : 0 1px 0 #111111, 0 2px 0 #777777;
    -webkit-box-shadow : 0 1px 0 #111111, 0 2px 0 #777777;
    box-shadow: 0 1px 0 #111111, 0 2px 1 #777777;
    /*Séparation des menus*/
}


nav #menu ul a:hover{
   
    background: #0c4e57;
    background: -moz-linear-gradient(#196d70, #0c4e57);
    background: -webkit-linear-gradient(#196d70, #0c4e57);
    background: -o-linear-gradient(#196d70,#0c4e57);
    background: -ms-linear-gradient(#196d70,#0c4e57);
    background: linear-gradient(#196d70, #0c4e57);
}

nav #menu ul li:first-child a {
    -moz-boder-radius : 5px 5px 0 0;
    -webkit-boder-radius : 5px 5px 0 0;
    border-radius: 5px 5px 0 0;
}

nav #menu ul li:last-child a {
    -moz-boder-radius : 0 0 5px 5px;
    -webkit-boder-radius :  0 0 5px 5px;
    border-radius: 0 0 5px 5px ;
}

nav #menu ul li:first-child a:after{
    content: '';
    position: absolute;
    left: 25px;
    top : -8px;
    width: 0;
    height: 0;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-bottom: 8px solid #444;

 /* faire un élément fantome ::after
 */
}

nav #menu ul li:first-child a:hover:after{
   border-bottom-color: #0c4e57;
}

/* Retablissement du flottement */

nav #menu:after{
 display: block;
 content: "";
 clear:both;
}

.formulaire
{
    display: flex;
    width:100%;
}

footer
{
    display: flex;
}

form .contenu fieldset p{
    min-width: 400px;
}

/* formulaire */
.formulaire{
    margin: 0;
    padding: 50px 0 40px 0;
    width: 100%;
}

form{
    max-width: 1500px;
    margin: 0 auto;
}

form .contenu {
    display:flex;
    flex-wrap : wrap;
    
}

fieldset {
    border:none;

}

input, textarea{
width:96%;
padding : 10px;
border-radius:5px;
border:none;
margin-top: 5px;
color: #111111;
font-size : 14px;
font-family: 'Roboto', sans-serif;
background-color: #d3d3d3;
}

.CheckBox{
background-color: #faf9f9;
}

form .contenu fieldset p{
    min-width: 400px;
}

form .contenu fieldset {
    flex:1;
}

form .contenu fieldset.submit {
    flex:2;
}

label{
    color : rgb(1, 1, 32)
}

form label {
    display:block;
    padding:0;
    text-align: left;

}

.checkbox{
    text-align: right;
}

fieldset p{
    margin:10px 0;
    font-size:14px;
    font-weight: 400;
    color: #19191a;
    padding-bottom: 0px;
}

form .submit{
    text-align: center;
}

.submit input{
    background: transparent;
    border:1px solid #111;
    color: #111;
    font-size: 15px;
    text-transform: uppercase;
    width: 100%;
}

.submit input:hover {
    background: #38c4a5;
    transition: all 0.5s ease 0.1s;
    border: 1px solid #089c7c;
    color:white;
    cursor:pointer;
}

section{
   border:1px solid #111;
   border-radius: 20px;
}


/*footer*/


footer{
    display: flex;
    justify-content: space-around;
    border-top: 1.5px solid rgb(233, 227, 227);
    margin: 0 0 0 0;
}

footer .row{
    width: 50%;
    justify-content: space-between;
    text-align: center;
}

footer h2{
    font-family: 'Shadows Into Light', cursive;
    font-size: 25px;
}

footer h2:hover{
    text-decoration: underline;
}

footer{
    color: #000;
}

footer li{
    list-style: none;
    color: black;

}

footer li a{
    text-decoration: none;
    list-style: none;
}

.row a{
 	text-decoration: none;
	color: black;
}

.row .para2{
    text-align: justify;
    padding: 0 0 0 80px;
}

.row ul{
    list-style: none;
    text-align: left;
    line-height: 1.8;
    padding: 0 0 0 150px;
}

div ul li a{
    color: #000;
}

footer ul a:hover{
    font-style: italic;
    color: rgb(185, 20, 20);
}


</style>
</head>

<body>

<header class="top">

        <div class=logo>
            <a href="/SerieShow/Accueil" target="_blank"><img src="images/ancien-poste-television-icone_23-2147501665.jpg" alt="Serie"></a>
        </div>

        <nav>
            <ul id="menu">
                <li><a href="/SerieShow/Accueil"> Accueil </a></li>
                <li><a href="#"> genre </a>
                    <ul class="genre">
                        <li><a href="#">Drame</a></li>
                        <li><a href="#">Thriller</a></li>
                        <li><a href="#">Comédie</a></li>
                        <li><a href="#">Sciences-fiction</a></li>
                        <li><a href="#">Policier</a></li>
                        <li><a href="#">Aventure</a></li>
                        <li><a href="#">Musical</a></li>
                        <li><a href="#">Action</a></li>
                    </ul>
                </li>
                <li><a href="/SerieShow/Connexion"> Connexion </a></li>
            </ul>
        </nav>

    </header>

    <div class="co">
        <h1>Page de Connexion</h1>
    </div>

    <section class=formulaire>
        <form action="Connexion" method="POST">
            <div class="division">
                <h2>Connectez-vous</h2>
                <fieldset>
                    <p>
                        <label for="email-0">E-mail</label>
                        <input type="email" id="email-0" name="email" class="Email" placeholder="abc@xxx.com" required="required"
                            tabindex="1" autofocus="autofocus" pattern="^[a-zA-Z0-9.-_]{3,30}@[a-zA-Z]{4,}[.][a-zA-Z]{2,5}$"
                            title="Adresse mail" />
                    </p>
                    <span id="missemail"></span>

                    <p>
                        <label for="Nom">Mot de passe</label>
                        <input type="password" name="password" id="password-0" class="Password" minlength="8" maxlength="250"
                            title="Votre mot de passe min 8 caractères" placeholder="Password" required="required"
                            tabindex="1" />
                    </p>
                    <span id="missmdp"></span>

                </fieldset>

            </fieldset>

            <!--Rester connecté-->
            <fieldset>
                <input type="checkbox" name="connexion-persist" id="connexion-0" class="Checkbox" checked="checked">
                <label for="connexion-0">Rester connecté</label>
            </fieldset>

                <fieldset class="submit">
                    <p>
                        <input type="submit" value="Connexion" id="bouton_envoi" />
                    </p>
                </fieldset>

            </div>
        </form>

        <form action="Enregistrement" method="POST">
            <div class="division">
                <h2>Créer un compte</h2>

                <fieldset>
                    <p>
                        <label for="name-0"> Nom </label>
                        <input type="text" name="name" id="name-0" class="user" minlength="3" maxlength="30" pattern="^[a-zA-Z][a-z]{2,29}$"
                            title="Votre nom d'utlisateur sans chifffe" placeholder="Name" required="required" />
                    </p>
                    <span id="missingNom"></span>

                    <p>
                        <label for="email-0">E-mail</label>
                        <input type="email" id="email-0" name="email" class="Email" placeholder="abc@xxx.com" required="required"
                            tabindex="1" autofocus="autofocus" pattern="^[a-zA-Z0-9.-_]{3,30}@[a-zA-Z]{4,}[.][a-zA-Z]{2,5}$"
                            title="Adresse mail" />
                    </p>
                    <span id="missemail"></span>

                    <p>
                        <label for="Nom">Mot de passe</label>
                        <input type="password" name="password" id="password-0" class="Password" minlength="8" maxlength="250"
                            title="Votre mot de passe min 8 caractères" placeholder="Password" required="required"
                            tabindex="1" />
                    </p>
                    <span id="missmdp"></span>
                   </fieldset>

                    <p>
                        <label for="Nom">Vérification</label>
                        <input type="password" name="password" id="password-0" class="Password" minlength="8" maxlength="250"
                            title="Votre mot de passe min 8 caractères" placeholder="Password" required="required"
                            tabindex="1" />
                    </p>
                    <span id="missmdp"></span>
                    
                <fieldset class="submit">
                    <p>
                        <input type="submit" value="Créer un compte" id="bouton_envoi" />
                    </p>
                </fieldset>


            </div>
        </form>
    </section>


    <footer>
        <div id="about" class="footer">
            <h2>About</h2>
            <ul>
                <li><a href="#"> Accueil </a></li>
                <li><a href="#"> Nouveautés </a></li>
                <li><a href="#"> Contact </a></li>
            </ul>
        </div>

        <div id="tags" class="footer">
            <h2>Tags</h2>
            <ul>
                <li><a href="#"> Serie </a></li>
                <li><a href="#"> Nouveautés </a></li>
                <li><a href="#"> Grey's Anatomy </a></li>
                <li><a href="#"> Streaming </a></li>
                <li><a href="#"> Inventaire </a></li>
            </ul>
        </div>


    </footer>


</body>
</html>