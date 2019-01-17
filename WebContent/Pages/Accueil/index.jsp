

<!DOCTYPE html>

<html dir="ltr" lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Serie Show</title>
<link rel="icon" href="C:/Users/Activ/Documents/HTML/SerieShow/images/iconTV.ico">
<link href="TvTime.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Archivo+Black|Francois+One|Raleway|Thasadith"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Dosis"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Shadows+Into+Light"
	rel="stylesheet">
<style>
* {
	box-sizing: border-box;
}

body {
	background-color: #faf9f9;
	font-family: 'Open Sans Condensed', sans-serif;
	font-size: 16px;
	line-height: 1.4;
}

/*Header*/
.top {
	display: flex;
	justify-content: space-between;
	flex-direction: row;
}

nav ul {
	display: flex;
	flex-direction: row;
	margin: 10px;
}

nav {
	padding: 65px 25px 0 0;
}

header img {
	margin: 0 0 2px 10px;
	padding: 20px 0 0 40px;
	height: 155px;
	width: 190px;
}

nav #menu {
	width: 100%;
	margin: 0;
	padding: 10px 0 0 0;
	list-style: none;
	background: #111;
	background: -moz-linear-gradient(#444, #111);
	background: -webkit-linear-gradient(#444, #111);
	background: -o-linear-gradient(#444, #111);
	background: -ms-linear-gradient(#444, #111);
	background: linear-gradient(#444, #111);
	-moz-border-radius: 10px;
	border-radius: 10px;
	-moz-box-shadow: 0 2px 1px #9c9c9c;
	-webkit-box-shadow: 0 2px 1px #9c9c9c;
	box-shadow: 0 2px 1px #9c9c9c;
}

nav #menu li {
	float: right;
	padding: 0 0 10px 0;
	position: relative;
}

nav #menu a {
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

nav #menu li a:hover {
	color: aqua;
	font-style: italic;
}

nav #menu li:hover>ul {
	display: block;
}

nav #menu ul {
	margin: 0;
	padding: 0;
	list-style: none;
	display: none;
	position: absolute;
	top: 35px;
	left: 0;
	z-index: 99999;
	background: #444;
	background: -moz-linear-gradient(#444, #111);
	background: -webkit-linear-gradient(#444, #111);
	background: -o-linear-gradient(#444, #111);
	background: -ms-linear-gradient(#444, #111);
	background: linear-gradient(#444, #111);
	-moz-border-radius: 5px;
	border-radius: 5px;
}

nav #menu ul a {
	padding: 10px 25px 10px 10px;
	height: auto;
	line-height: 1;
	display: block;
	white-space: nowrap;
	float: none;
	text-transform: none;
}

nav #menu ul li {
	float: none;
	margin: 0;
	padding: 0;
	display: block;
	-moz-box-shadow: 0 1px 0 #111111, 0 2px 0 #777777;
	-webkit-box-shadow: 0 1px 0 #111111, 0 2px 0 #777777;
	box-shadow: 0 1px 0 #111111, 0 2px 1 #777777;
	/*Séparation des menus*/
}

nav #menu ul a:hover {
	background: #0c4e57;
	background: -moz-linear-gradient(#196d70, #0c4e57);
	background: -webkit-linear-gradient(#196d70, #0c4e57);
	background: -o-linear-gradient(#196d70, #0c4e57);
	background: -ms-linear-gradient(#196d70, #0c4e57);
	background: linear-gradient(#196d70, #0c4e57);
}

nav #menu ul li:first-child a {
	-moz-boder-radius: 5px 5px 0 0;
	-webkit-boder-radius: 5px 5px 0 0;
	border-radius: 5px 5px 0 0;
}

nav #menu ul li:last-child a {
	-moz-boder-radius: 0 0 5px 5px;
	-webkit-boder-radius: 0 0 5px 5px;
	border-radius: 0 0 5px 5px;
}

nav #menu ul li:first-child a:after {
	content: '';
	position: absolute;
	left: 25px;
	top: -8px;
	width: 0;
	height: 0;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-bottom: 8px solid #444;

	/* faire un élément fantome ::after
 */
}

nav #menu ul li:first-child a:hover:after {
	border-bottom-color: #0c4e57;
}

/* Retablissement du flottement */
nav #menu:after {
	display: block;
	content: "";
	clear: both;
}

/*Body*/
.articles {
	display: flex;
	padding: 0 0 0 50px;
}

.card {
	background-color: #fff;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	left: 20%;
	top: 50%;
	position: relative;
	overflow: hidden;
	transform: translateX(-50%) translateY(-50%);
	transition: box-shadow 0.3s ease 0s;
	width: 368px;
	margin: 200px 10px 0 10px;
}

.card a {
	text-decoration: none;
}

.card:hover {
	box-shadow: 0 0 50px rgba(0, 0, 0, 0.3);
}

.card_date {
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
	top: 20px;
	width: 50px;
}

.card_date_day {
	display: block;
	font-size: 15px;
}

.card_date_month {
	display: block;
	font-size: 13px;
	text-transform: uppercase;
}

.card_thumb {
	background-color: #000;
	height: 205px;
	overflow: hidden;
	transition: height 0.3s ease 0s;
}

.card_thumb img {
	display: block;
	opacity: 1;
	transform: scale(1);
	transition: opacity 0.3s ease 0s, transform 0.3s ease 0s;
}

.card:hover .card_thumb img {
	opacity: 0.6;
	transform: scale(1.2);
}

.card:hover .card_thumb {
	height: 90px;
}

.card_body {
	height: 165px;
	padding: 20px;
	position: relative;
	transition: height 0.3s ease 0s;
}

.card:hover .card_body {
	height: 330px;
}

.card_category {
	background-color: #7fc8ca;
	font-size: 13px;
	height: 25px;
	left: 0;
	line-height: 25px;
	padding: 0 15px;
	position: absolute;
	top: -25px;
}

.card_category a {
	color: #000;
}

.card_category a:hover {
	color: #000;
	font-style: italic;
}

.card_title {
	color: #000;
	font-size: 22px;
	font-weight: blod;
	margin: 0;
	padding: 0 0 10px;
}

.card_title a {
	color: #000;
	font-size: 25px;
}

.card_title a:hover {
	font-size: 25px;
	font-style: italic;
	color: #7fc8ca;
}

.card_sub {
	color: rgb(34, 41, 43);
	font-size: 25px;
	font-family: 'Dosis', sans-serif;
	font-style: italic;
	margin: 0;
	padding: 0 0 10px;
}

.card_description {
	bottom: 65px;
	color: #666c74;
	font-size: 16px;
	left: 20px;
	line-height: 27px;
	margin: 0;
	opacity: 0;
	padding: 0;
	position: absolute;
	right: 20px;
	transform: translateY(25px);
	transition-delay: 0s;
	transition-duration: 0.2s, 0.2s;
	transition-property: opacity, transform;
	transition-timing-function: ease, ease;
	text-align: justify;
}

.card:hover .card_description {
	opacity: 1;
	transform: translateY(0px);
	transition-delay: 0.1s;
}

.card_footer {
	font-family: 'Open Sans', sans-serif;
	font-size: 11px;
	bottom: 15px;
	color: #a3a9ab;
	left: 15px;
	position: absolute;
	right: 20px;
}

.card_footer a {
	text-decoration: none;
	color: #7fc8ca;
}

.card_footer a:hover {
	font-weight: bold;
}

.visites{
	border-radius: 10px;
	background-color: #c5c5c5;
	
}

.icon {
	display: inline-block;
	margin-right: 2px;
	vertical-align: middle;
	height: 14px;
	width: 14px;
}

.icon--time {
	background: url("images/sablier.png") no-repeat;
	margin-top: -3px;
	opacity: 0.4;
}

.icon--comment {
	background: url("images/comments.png") no-repeat;
	opacity: 0.4;
	margin-left: 12px;
}

/*footer*/
footer {
	display: flex;
	justify-content: space-around;
	border-top: 1.5px solid rgb(233, 227, 227);
	margin: 0 0 0 0;
}

footer .row {
	width: 33.33%;
	justify-content: space-between;
	text-align: center;
}

footer h2 {
	font-family: 'Shadows Into Light', cursive;
	font-size: 25px;
}

footer h2:hover {
	text-decoration: underline;
}

.row a {
	text-decoration: none;
	color: black;
}

.row .para2 {
	text-align: justify;
	padding: 0 0 0 80px;
}

.row ul {
	list-style: none;
	text-align: left;
	line-height: 1.8;
	padding: 0 0 0 150px;
}

.row ul a:hover {
	font-style: italic;
	color: rgb(185, 20, 20);
}

.tag {
	display: flex;
}

.tag p {
	margin: 10px;
	font-size: 12px;
	padding: 8px;
	text-align: center;
	background-color: white;
	border-radius: 10px;
}

.tag p:hover {
	background-color: rgb(74, 191, 238);
	border-radius: 10px;
}

span.date {
	border-radius: 10px;
	background-color: #c5c5c5;
	padding: 7px 15px;
}

footer.compteur {
	font-style: bold;
	font-size: 15px;
	color: blue;
}
</style>
</head>
<body>
	<i> <span class="date">Nous sommes le : <!-- java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); -->
			<%=new java.util.Date().toString()%>

	</span>
	</i>
	<br />
	<header class="top">
		<div class="logo">
			<a href="#" target="_blank"><img
				src="C:/Users/Activ/Documents/HTML/SerieShow/images/ancien-poste-television-icone_23-2147501665.jpg"
				alt="poste de TV"></a>
		</div>
		<nav>
			<ul id="menu">
				<li><a href="#"> Accueil</a></li>
				<li><a href="#"> Genre</a>
					<ul>
						<li><a href="#"> Drame </a></li>
						<li><a href="#"> Thriller </a></li>
						<li><a href="#"> Comédie </a></li>
						<li><a href="#"> Sciences-fiction </a></li>
						<li><a href="#"> Policier </a></li>
						<li><a href="#"> Aventure </a></li>
						<li><a href="#"> Musicale </a></li>
						<li><a href="#"> Action </a></li>
					</ul>
				<li><a href="/Pages/Connexion"> Connexion </a></li>
			</ul>
		</nav>
	</header>

	<section class="articles">
		<article class="card">

			<div class="card_thumb">
				<a href="#"> <img
					src="C:/Users/Activ/Documents/HTML/SerieShow/images/gooddoctor.png"
					alt="Good doctor">
				</a>
			</div>
			<div class="card_date">
				<span class="card_date_day">09</span> <span class="card_date_month">Janvier</span>
			</div>

			<div class="card_body">
				<div class="card_category">
					<a href="#">Photos</a>
				</div>
				<h1 class="card_title">
					<a href="#"> Retour de Good Doctor on TV</a>
				</h1>
				<h2 class="card_sub">Virus</h2>
				<p class="card_description">Après un mois d'arrêt et un épisode
					à la fois altant et déprimant, Shawn est de retour sur vos écrans.
					Le dernier épisode vous a laissé dans l'attente suprême. Comment
					vont ils s'en sortir? Lim est elle encore en vie ? La quarantaine
					va-t-elle encore faire des victimes ? Plus que 7 jours pour le
					découvrir.</p>
			</div>

			<footer class="card_footer">
				<span class="icon icon--time"></span>40 min <span
					class="icon icon--comment"></span><a href="#">105 commentaires</a>
			</footer>
		</article>

		<article class="card">

			<div class="card_thumb">
				<a href="#"> <img
					src="C:/Users/Activ/Documents/HTML/SerieShow/images/GA.jpg"
					alt="Greys Anatomy">
				</a>
			</div>
			<div class="card_date">
				<span class="card_date_day">12</span> <span class="card_date_month">Janvier</span>
			</div>

			<div class="card_body">
				<div class="card_category">
					<a href="#">Photos</a>
				</div>
				<h1 class="card_title">
					<a href="#"> GA is back </a>
				</h1>
				<h2 class="card_sub">Choix</h2>
				<p class="card_description">Après un mois d'arrêt et un épisode
					à la fois altant et déprimant, Shawn est de retour sur vos écrans.
					Le dernier épisode vous a laissé dans l'attente suprême. Comment
					vont ils s'en sortir? Lim est elle encore en vie ? La quarantaine
					va-t-elle encore faire des victimes ? Plus que 7 jours pour le
					découvrir.</p>
			</div>

			<footer class="card_footer">
				<span class="icon icon--time"></span>45 min <span
					class="icon icon--comment"></span><a href="#">549 commentaires</a>
			</footer>
		</article>

		<article class="card">

			<div class="card_thumb">
				<a href="#"> <img
					src="C:/Users/Activ/Documents/HTML/SerieShow/images/BlackSails.jpg"
					alt="Black sails">
				</a>
			</div>
			<div class="card_date">
				<span class="card_date_day">14</span> <span class="card_date_month">Janvier</span>
			</div>

			<div class="card_body">
				<div class="card_category">
					<a href="#">Photos</a>
				</div>
				<h1 class="card_title">
					<a href="#"> Nouveauté Black Sails </a>
				</h1>
				<h2 class="card_sub">I</h2>
				<p class="card_description">Après un mois d'arrêt et un épisode
					à la fois altant et déprimant, Shawn est de retour sur vos écrans.
					Le dernier épisode vous a laissé dans l'attente suprême. Comment
					vont ils s'en sortir? Lim est elle encore en vie ? La quarantaine
					va-t-elle encore faire des victimes ? Plus que 7 jours pour le
					découvrir.</p>
			</div>

			<footer class="card_footer">
				<span class="icon icon--time"></span>55 min <span
					class="icon icon--comment"></span><a href="#">10 commentaires</a>
			</footer>
		</article>

	</section>



	<footer>
		<div class="row">
			<a href="#">
				<h2>About</h2>
			</a>
			<p class="para2">Superatis Tauri montis verticibus qui ad solis
				ortum sublimius attolluntur, Cilicia spatiis porrigitur late
				distentis dives bonis omnibus terra, eiusque lateri dextro adnexa
				Isauria.</p>
		</div>

		<div class="row">
			<a href="#">
				<h2>Recent Post</h2>
			</a>

			<ul>
				<a href="#">
					<li>Contact</li>
				</a>
				<a href="#">
					<li>Informations</li>
				</a>
				<a href="#">
					<li>Nouveautés</li>
				</a>
			</ul>

		</div>

		<div class="row">
			<a href="#">
				<h2>Tags</h2>
			</a>
			<div class="tag">
				<a href="#">
					<p>Exclusivité</p>
				</a> <a href="#">
					<p>Populaire</p>
				</a> <a href="#">
					<p>Dernières</p>
				</a> <a href="#">
					<p>Séries</p>
				</a>
			</div>
			<div class="visites">
				<%!int compteur = 0;%>
				<%
					compteur++;
				%>
				Nombre de visites :
				<%=compteur%>
			</div>
		</div>
	</footer>




</body>
</html>