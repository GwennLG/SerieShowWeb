













package fr.glegalludec;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;



public class Series {
	private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/SerieShow?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private static final String DATABASE_LOGIN = "root";
	private static final String DATABASE_SECRET = "activ";
	
	private static ArrayList <String[] > series = new ArrayList <String[]>();
	private static ArrayList <String[] > genre = new ArrayList <String[]>();
	private static ArrayList <String[] > saisons = new ArrayList <String[]>();
	private static ArrayList <String[] > episodes = new ArrayList <String[]>();
	private static ArrayList <String[] > acteurs = new ArrayList <String[]>();
	
	private static boolean seriesRegardees = true;
	private static int tempsVisionnage = 0;
	private static String episodesRegardes = "Pas vu";
	
	
	public static final void utiliserInsert() {
		
	
			//Casa de Papel
			String[] i = {"Casa de Papel", "Alex Pi�a", "2 Mai 2017", null}; 
			series.add(i);
			String[] j = {"3", "Ursula Corbero"};
			acteurs.add(j);
			String[] k = {"1", "Thriller"};
			genre.add(k);
			String[] l = {"1", "2 saisons"};
			saisons.add(l);
			String[] m = {"1","1�re saison","13 �pisodes", "55", "Pas vu"};
			episodes.add(m);
			m = new String[] {"1", "2�me saison", "9 �pisodes", "55", "Pas vu"};
			episodes.add(m);
						
						
			//	Grey's Anatomy
			i = new String [] {"Grey's Anatomy", "Rhimes Shonda", "27 Mars 2005", null};
			series.add(i);
			j = new String []{"2","Ellen Pompeo"};
			acteurs.add(j);
			k = new String [] {"3", "M�dicale"};
			genre.add(k);
			l = new String [] {"3", "15 saisons"};
			saisons.add(l);
			m = new String [] {"3", "1�re saison", "9 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "2�me saison", "28 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "3�me saison", "26 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "4�me saison", "17 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "5�me saison", "24 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "6�me saison", "24 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "7�me saison", "22 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "8�me saison", "24 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "9�me saison", "24 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "10�me saison", "24 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "11�me saison", "24 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "12�me saison", "24 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "13�me saison", "24 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "14�me saison", "24 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"3", "15�me saison", "8 �pisodes", "45", "Pas vu"};
			episodes.add(m);
	
			//Black Sails			
			i = new String [] {"Black Sails", "Robert Levine", "25 Janvier 2014", "2 Avril 2017"};
			series.add(i);
			j = new String [] {"20", "Toby Stephens"};
			acteurs.add(j);
			k = new String [] {"8", "Drame Historique"};
			genre.add(k);
			l = new String [] {"8", "4 saisons"}; 
			saisons.add(l);
			m = new String [] {"8", "1�re saison", "8 �pisodes", "55", "Pas vu"};
			episodes.add(m);
			m = new String [] {"8", "2�me saison", "10 �pisodes", "55", "Pas vu"};
			episodes.add(m);
			m = new String [] {"8", "3�me saison", "10 �pisodes", "55", "Pas vu"};
			episodes.add(m);
			m = new String [] {"8", "4�me saison", "10 �pisodes", "55", "Pas vu"};
			episodes.add(m);
			
			//Outlander
			i = new String [] {"Outlander", "Ronald Moore", "9 Aout 2014", null};
			series.add(i);
			j = new String [] {"28", "Sam Heughan"};
			acteurs.add(j);
			k = new String [] {"12", "Drame"};
			genre.add(k);
			l = new String [] {"12", "4 saisons"};
			saisons.add(l);
			m = new String [] {"12", "1�re saison", "16 �pisodes", "60", "Pas vu"};
			episodes.add(m);
			m = new String [] {"12", "2�me saison", "13 �pisodes", "60", "Pas vu"};
			episodes.add(m);
			m = new String [] {"12", "3�me saison", "13 �pisodes", "60", "Pas vu"};
			episodes.add(m);
			m = new String [] {"12", "4�me saison", "13 �pisodes", "60", "Pas vu"};
			episodes.add(m);
			
			
			//The 100
			i = new String [] {"The 100", "Jason Rothenberg", "19 Mars 2014", null};
			series.add(i);
			j = new String [] {"34", "Eliza Taylor-Gotter"};
			acteurs.add(j);
			k = new String [] {"15", "Scienc-Fiction"};
			genre.add(k);
			l = new String [] {"15", "5 saisons"};
			saisons.add(l);
			m = new String [] {"15", "1�re saison", "13 �pisodes", "45", "Pas vu"};
			episodes.add(l);
			m = new String [] {"15", "2�me saison", "16 �pisodes", "45", "Pas vu"};
			episodes.add(l);
			m = new String [] {"15", "3�me saison", "16 �pisodes", "45", "Pas vu"};
			episodes.add(l);
			m = new String [] {"15", "4�me saison", "13 �pisodes", "45", "Pas vu"};
			episodes.add(l);
			m = new String [] {"15", "5�me saison", "13 �pisodes", "45", "Pas vu"};
			episodes.add(l);
			
 						
			//Good Doctor
			i = new String [] {"Good Doctor", "David Shore", "25 Septembre 2017", null};
			series.add(i);
			j = new String [] {"36", "Freddie Highmore"};
			acteurs.add(j);
			k = new String [] {"16", "M�dicale"};
			genre.add(k);
			l = new String [] {"16", "5 saisons"};
			saisons.add(l);
			m = new String [] {"16", "1�re saison", "18 �pisodes", "45", "Pas vu"};
			episodes.add(m);
			m = new String [] {"16", "2�me saison", "11 �pisodes", "45", "Pas vu"};
			episodes.add(m);
		 
	}
	
	public static int tempsARegarderDesSeries () {
		if (seriesRegardees == true) {
			for (String[] episodesvu : episodes) {
				tempsVisionnage += Integer.parseInt(episodesvu[3]);
			}
		}
		return tempsVisionnage;
	}
	
	
}	
	

