<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
*{
    box-sizing: border-box;
}

body{
    background-color: #faf9f9;
    font-family: 'Open Sans Condensed', sans-serif;
    font-size: 16px;
    line-height: 1.4;
}

/*Header*/

.entete .profil{
    display: flex;
    flex-direction: row;  
}

.entete .profil h2{
    margin: 70px 0 0 190px;
    color: white;
}

.entete{
    display: flex;
    justify-content: space-between;
    background: url("images/banniere.png") no-repeat ;
    height: 200px;
    width: 100%;
}

nav ul{
    display: flex;
    flex-direction: row;
    margin: 10px;

}

nav{
    padding: 65px 25px 0 0;
}

header img{
    margin: 0 0 2px 10px;
    padding: 20px 0 0 40px;
    height: 155px;
    width: 190px;
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
    float: right;
    padding: 0 0 10px 0;
    position: relative;
}

nav #menu a{
    float: right;
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

/*Body*/
.series{
    display: flex;
    padding: 0 0 0 50px;
}

.series h1{
    width: 100%;
    margin-top: 70px;
    padding-left: 95px;
}

.card{
    background-color: #fff;
    box-shadow: 0 0 20px rgba(0,0,0,0.1);
    left: 20%;
    top: 50%;
    position: relative;
    overflow: hidden;
    transform: translateX(-50%) translateY(-50%);
    transition: box-shadow 0.3s ease 0s;
    width: 350px;
    margin: 200px 10px 0 10px;
}

.card a{
    text-decoration: none;
}

.card:hover{
    box-shadow: 0 0 50px rgba(0,0,0,0.3);
}

.card_date{
    background-color: #7fc8ca;
    border-radius: 50%;
    color: rgb(26, 24, 24);
    font-weight: bold;
    height: 50px;
    line-height: 13px;
    padding-top: 10px;
    position: absolute;
    right: 20px;
    text-align: center;
    top:20px;
    width: 50px;
}

.card_date_day{
    display: block;
    font-size: 15px;
}

.card_date_month{
    display: block;
    font-size: 13px;
    text-transform: uppercase;
}

.card_thumb{
    background-color: #000;
    height: 205px;
    overflow: hidden;
    transition: height 0.3s ease 0s;
}

.card_thumb img{
    display: block;
    opacity: 1;
    transform: scale(1);
    transition: opacity 0.3s ease 0s, transform 0.3s ease 0s;
}


.card_body {
    height: 165px;
    padding: 20px;
    position: relative;
    transition: height 0.3s ease 0s;
}

.card:hover .card_body{
    height: 330px;
}

.card_category{
    background-color: #7fc8ca;
    font-size: 13px;
    height: 25px;
    left: 0;
    line-height: 25px;
    padding: 0 15px;
    position: absolute;
    top : -25px;
}

.card_category a{
    color: #000;
}

.card_category a:hover{
    color: #000;
    font-style: italic;
}

.card_title{
    color: #000;
    font-size: 22px;
    font-weight: blod;
    margin: 0;
    padding: 0 0 10px;
}

.card_title a{
    color: #000;
    font-size: 25px;
}

.card_title a:hover{
    font-size: 25px;
    font-style: italic;
    color: #7fc8ca;
}


.card_sub{
    color: rgb(34, 41, 43);
    font-size: 25px;
    font-family: 'Dosis', sans-serif;
    font-style: italic;
    margin: 0;
    padding: 0 0 10px;
}

.card_description{
    bottom: 65px;
    color: #666c74;
    font-size: 16px;
    left: 20px;
    line-height: 27px;
    margin : 0;
    opacity: 0;
    padding: 0;
    position: absolute;
    right: 20px;
    transform: translateY(25px);
    transition-delay: 0s;
    transition-duration: 0.2s, 0.2s;
    transition-property: opacity, transform;
    transition-timing-function: ease,ease;
    text-align: justify;
}

.card:hover .card_description{
    opacity: 1;
    transform: translateY(0px);
    transition-delay: 0.1s;
    
}

.card_footer{
    font-family: 'Open Sans', sans-serif;
    font-size: 11px;
    bottom: 15px;
    color: #f87102;
    left: 15px;
    position: absolute;
    right: 20px;
    
}

.card_footer a{
    text-decoration: none;
    color: #f87102;
    margin-top: 10px;
}

.card_footer a:hover{
    font-weight: bold;
}

.card_footer input{
    margin-top: 10px;
    font-weight: bold;
}

.icon{
    display: inline-block;
    margin-right: 2px;
    vertical-align: middle;
    height: 14px;
    width: 14px;
}

.icon--time{
    background: url("images/sablier.png") no-repeat;
    margin-top: 10px;
    
}

.icon--comment{
    background: url("images/comments.png") no-repeat;
    
    margin-top: 10px;
    margin-left: 12px;
}

/*footer*/


footer{
    display: flex;
    justify-content: space-around;
    border-top: 1.5px solid rgb(233, 227, 227);
    margin: 0 0 0 0;
}

footer .row{
    width: 33.33%;
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

.row ul a:hover{
    font-style: italic;
    color: rgb(185, 20, 20);
}

.tag{
    display: flex;
    
}

.tag p{
    margin: 10px;
    font-size: 12px;
    padding: 8px;
    text-align: center;
    background-color: white;
    border-radius: 10px;
}

.tag p:hover{
    background-color: rgb(74, 191, 238);
    border-radius: 10px;
}

.series{
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    margin-top: -50px;
}
.titre{
    padding-left: 95px;
}
</style>
</head>
<body>
    <header class="entete">
        
        <div class="profil">
            <img src="images/quatuor.png" alt="profil">
            <h2>Nom utilisateur</h2>
        </div>

        <nav>
            <ul id="menu">
                <li><a href="#" id="onglet">Séries</a></li>
                <li><a href="#" id="onglet1">Mes séries</a></li>
                <li><a href="#">Recommandations</a>
                    <ul>
                        <li>
                            <li><a href="#"> Genre </a></li>
                            <li><a href="#"> Réalisateur </a></li>
                            <li><a href="#"> Acteur </a></li>
                        </li>
                    </ul>
                </li>
                <li><a href="#">Espace Membre</a>
                    <ul>
                        <li>
                            <li><a href="#"> Paramètres de compte </a></li>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>
    
    <section class="series" id="ongletSeries">
            <h1>Séries disponibles</h1>
        <article class="card">

            <div class="card_thumb">
                <a href="#">
                    <img src="images/gooddoctor.png" alt="Good doctor">
                </a>
            </div>
            <div class="card_date">
                <span class="card_date_day">09</span>
                <span class="card_date_month">Janvier</span>
            </div>
            <footer class="card_footer">
                <span class="icon icon--time"></span><a href="#">45 min</a>
                <span class="icon icon--comment"></span><a href="#">105 commentaires</a>
                <input type="button" value="Add"></button>
            </footer>
        </article>

        <article class="card">
            <div class="card_thumb">
                <a href="#">
                    <img src="images/GA.jpg" alt="GA">
                </a>
            </div>
            <div class="card_date">
                <span class="card_date_day">25</span>
                <span class="card_date_month">Février</span>
            </div>
            <footer class="card_footer">
                <span class="icon icon--time"></span><a href="#">45 min</a>
                <span class="icon icon--comment"></span><a href="#">105 commentaires</a>
                <input type="button" value="Add"></button>
            </footer>
        </article>

        <article class="card">
            <div class="card_thumb">
                <a href="#">
                    <img src="images/shc-outlander-s4.jpg" alt="outlander">
                </a>
            </div>
            <div class="card_date">
                <span class="card_date_day">13</span>
                <span class="card_date_month">Avril</span>
            </div>
            <footer class="card_footer">
                <span class="icon icon--time"></span><a href="#">60 min</a>
                <span class="icon icon--comment"></span><a href="#">105 commentaires</a>
                <input type="button" value="Add"></button>
            </footer>
        </article>

        <article class="card">
            <div class="card_thumb">
                <a href="#">
                    <img src="images/BlackSails.jpg" alt="BlackSails">
                </a>
            </div>
            <div class="card_date">
                <span class="card_date_day">25</span>
                <span class="card_date_month">Février</span>
            </div>
            <footer class="card_footer">
                <span class="icon icon--time"></span><a href="#">55 min</a>
                <span class="icon icon--comment"></span><a href="#">105 commentaires</a>
                <input type="button" value="Add"></button>
            </footer>
        </article>

        <article class="card">
            <div class="card_thumb">
                <a href="#">
                    <img src="images/casa_de_papel.jpg" alt="casa">
                </a>
            </div>
            <div class="card_date">
                <span class="card_date_day">25</span>
                <span class="card_date_month">Février</span>
            </div>
            <footer class="card_footer">
                <span class="icon icon--time"></span><a href="#">55 min</a>
                <span class="icon icon--comment"></span><a href="#">105 commentaires</a>
                <input type="button" value="Add"></button>
            </footer>
        </article>

        <article class="card">
            <div class="card_thumb">
                <a href="#">
                    <img src="images/the100.jpg" alt="the100">
                </a>
            </div>
            <div class="card_date">
                <span class="card_date_day">25</span>
                <span class="card_date_month">Février</span>
            </div>

            <footer class="card_footer">
                <span class="icon icon--time"></span><a href="#">45 min</a>
                <span class="icon icon--comment"></span><a href="#">105 commentaires</a>
                <input type="button" value="Add"></button>
            </footer>
        </article>
    </section>


    <section class="mesSeries" id="ongletmesSeries">
           <h3>Épisodes à voir</h3>
           <h3>À venir</h3>
           <div class="pascommence">
                <h3>Pas commencées</h3>
                <article class="card">
                    <div class="card_thumb">
                        <a href="#">
                            <img src="images/BlackSails.jpg" alt="BlackSails">
                        </a>
                    </div>
                    <div class="card_date">
                        <span class="card_date_day">25</span>
                        <span class="card_date_month">Février</span>
                    </div>
                    <footer class="card_footer">
                        <span class="icon icon--time"></span><a href="#">55 min</a>
                        <span class="icon icon--comment"></span><a href="#">105 commentaires</a>
                        <input type="button" value="Add"></button>
                    </footer>
                </article>
            </div>
            <div class="encours">
                <h3>En cours</h3>
                <article class="card">
                    <div class="card_thumb">
                        <a href="#">
                            <img src="images/shc-outlander-s4.jpg" alt="outlander">
                        </a>
                    </div>
                    <div class="card_date">
                        <span class="card_date_day">13</span>
                        <span class="card_date_month">Avril</span>
                    </div>
                    <footer class="card_footer">
                        <span class="icon icon--time"></span><a href="#">60 min</a>
                        <span class="icon icon--comment"></span><a href="#">105 commentaires</a>
                        <input type="button" value="Add"></button>
                    </footer>
                </article>
            </div>
           <h3>À jour</h3>

           <div class="encours">
           <h3>Terminées</h3>
           
        <article class="card">
                <div class="card_thumb">
                    <a href="#">
                        <img src="images/GA.jpg" alt="GA">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">25</span>
                    <span class="card_date_month">Février</span>
                </div>
                <footer class="card_footer">
                    <span class="icon icon--time"></span><a href="#">45 min</a>
                    <span class="icon icon--comment"></span><a href="#">105 commentaires</a>
                    <input type="button" value="Add"></button>
                </footer>
            </article>
        </div>
           <h3>Préférées</h3>
    </section>

    <script>

        // au click sur un menu, 
        // document.querySelector("#onglet1").onclick = function() {
        //     document.getElementById("#ongletSerie").style.display="none";
        //     document.getElementById("#ongletmesSeries").style.display="block";
        // }
        //cacher toutes les sections et afficher section voulue
       var onglet =  document.getElementById("onglet1");
       onglet.addEventListener("click", affichermesSeries);
        
        
        function affichermesSeries(){
            document.getElementById("ongletSeries").style.display="none"; 
            document.getElementById("ongletmesSeries").style.display="block";
        }

        var onglet1 =  document.getElementById("onglet");
       onglet1.addEventListener("click", afficherSeries);
        function afficherSeries(){
            document.getElementById("ongletmesSeries").style.display="none";
            document.getElementById("ongletSeries").style.display="block"; 
        }

    </script>
</body>
</html>