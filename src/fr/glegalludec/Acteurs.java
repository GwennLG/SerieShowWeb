package fr.glegalludec;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Acteurs {
	private static final String Database_url = "jdbc:mysql://localhost:3306/Serie_show?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private static final String Database_login = "root";
	private static final String Database_secret = "activ";
	
	public static final void utiliserInsert() {
		try {
			// Ouvrir une connexion avec notre BDD sur mysql
			Connection connexion  = DriverManager.getConnection(Database_url, Database_login, Database_secret);
			String request = "insert into acteurs (ac_nom, ac_prenom) VALUE (?,?)";
			
			PreparedStatement preparateur = connexion.prepareStatement(request);
			
			// Grey's Anatomy
			preparateur.setString(1, "Pompeo");
			preparateur.setString(2, "Ellen");
			preparateur.execute();
			
			preparateur.setString(1, "Chambers");
			preparateur.setString(2, "Justin");
			preparateur.execute();
			
			// Casa de Papel
			preparateur.setString(1, "Cobero");
			preparateur.setString(2, "Ursula");
			preparateur.execute();
			
			preparateur.setString(1, "Morte");
			preparateur.setString(2, "Alvaro");
			preparateur.execute();
			
			// Sex And the city
			preparateur.setString(1, "Jessica-Parker");
			preparateur.setString(2, "Sarah");
			preparateur.execute();
			
			preparateur.setString(1, "Nixon");
			preparateur.setString(2, "Cynthia");
			preparateur.execute();
			
			preparateur.setString(1, " Cattrall");
			preparateur.setString(2, "Kim");
			preparateur.execute();
			
			preparateur.setString(1, "Davis");
			preparateur.setString(2, "Kristin");
			preparateur.execute();
			
			
			// Desperate
			preparateur.setString(1, "Longoria");
			preparateur.setString(2, "Eva");
			preparateur.execute();
			
			preparateur.setString(1, "Cross");
			preparateur.setString(2, "Marcia");
			preparateur.execute();
			
			preparateur.setString(1, "Hoffman");
			preparateur.setString(2,  "Felicity");
			preparateur.execute();
			
			preparateur.setString(1, "Hatcher");
			preparateur.setString(2, "Teri");
			preparateur.execute();
			
			
			// Big Bang theory
			preparateur.setString(1, "Parsons");
			preparateur.setString(2, "Jim");
			preparateur.execute();
			
			preparateur.setString(1, "Cuoco");
			preparateur.setString(2, "Kaley");
			preparateur.execute();
			
			
			// Charmed
			preparateur.setString(1, "Milano");
			preparateur.setString(2, "Alyssa");
			preparateur.execute();
			
			preparateur.setString(1, " Marie Combs");
			preparateur.setString(2, "Holly");
			preparateur.execute();
			
			preparateur.setString(1, "McGowan");
			preparateur.setString(2, "Rose");
			preparateur.execute();
			
			
			// 13th reasons why
			preparateur.setString(1, "Minette");
			preparateur.setString(2, "Dylan");
			preparateur.execute();
			
			preparateur.setString(1, "Langford");
			preparateur.setString(2, "Katherine");
			preparateur.execute();
			
			// Black Sails
			preparateur.setString(1, "Stephens");
			preparateur.setString(2, "Toby");
			preparateur.execute();
			
			preparateur.setString(1, "Arnold");
			preparateur.setString(2, "Luke");
			preparateur.execute();
			
			
			// Lucifer
			preparateur.setString(1, "Ellis");
			preparateur.setString(2, "Tom");
			preparateur.execute();
			
			preparateur.setString(1, "German");
			preparateur.setString(2, "Lauren");
			preparateur.execute();
			
			
			// Gotham
			preparateur.setString(1, "McKenzie");
			preparateur.setString(2, "Ben");
			preparateur.execute();
			

			// The Last Ship
			preparateur.setString(1, "Dane");
			preparateur.setString(2, "Eric");
			preparateur.execute();
			
			preparateur.setString(1, "Baldwin");
			preparateur.setString(2, "Adam");
			preparateur.execute();
			

			// Outlander 
			preparateur.setString(1, "Balfe");
			preparateur.setString(2, "Caintriona");
			preparateur.execute();
			
			preparateur.setString(1, "Heughan");
			preparateur.setString(2, "Sam");
			preparateur.execute();
			
				
			// Originals
			preparateur.setString(1, "Morgan");
			preparateur.setString(2, "Jospeh");
			preparateur.execute();

			preparateur.setString(1, "Holt");
			preparateur.setString(2, "Claire");
			preparateur.execute();
			
			
			// HTGAWM 
			preparateur.setString(1, "Davis");
			preparateur.setString(2, "Viola");
			preparateur.execute();
			
			preparateur.setString(1, "Weil");
			preparateur.setString(2, "Liza");
			preparateur.execute();
			
			preparateur.setString(1, "Weber");
			preparateur.setString(2, "Charlie");
			preparateur.execute();
			
						
			// The 100
			preparateur.setString(1, "Taylor-Gotter");
			preparateur.setString(2, "Eliza");
			preparateur.execute();
			
			preparateur.setString(1, "Morley");
			preparateur.setString(2, "Bob");
			preparateur.execute();
				
			
			// Good doctor
			preparateur.setString(1, "Highmore");
			preparateur.setString(2, "Freddie");
			preparateur.execute();
			
			preparateur.setString(1, "Thomas");
			preparateur.setString(2, "Antonia");
			preparateur.execute();
			
			
				
			// GOT
			preparateur.setString(1, "Clark");
			preparateur.setString(2, "Emilia");
			preparateur.execute();
			
			preparateur.setString(1, "Harrigton");
			preparateur.setString(2, "Kit");
			preparateur.execute();
			
			
			// Downton abbey
			preparateur.setString(1, "Bonneville");
			preparateur.setString(2, "Hugh");
			preparateur.execute();
			
			preparateur.setString(1, "Dockery");
			preparateur.setString(2, "Michelle");
			preparateur.execute();
			
			
			// Empire
			preparateur.setString(1, "Howard");
			preparateur.setString(2, "Terrence");
			preparateur.execute();
			
			preparateur.setString(1, "P.Henson");
			preparateur.setString(2, "Taraji");
			preparateur.execute();
			
			
			// Izombie
			preparateur.setString(1, "McIver");
			preparateur.setString(2, "Rose");
			preparateur.execute();
			
			preparateur.setString(1, "Goodwin");
			preparateur.setString(2, "Malcom");
			preparateur.execute();
			
			preparateur.close();
			connexion.close();
			
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
