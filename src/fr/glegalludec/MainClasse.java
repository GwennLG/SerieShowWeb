package fr.glegalludec;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MainClasse {

	private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/SerieShow?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private static final String DATABASE_LOGIN = "root";
	private static final String DATABASE_SECRET = "activ";
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		utiliserSelect();
		//utiliserInsert();
	}
	
	private static final void utiliserSelect() {
		try {
			Connection connexion = DriverManager.getConnection(DATABASE_URL, DATABASE_LOGIN, DATABASE_SECRET);
			String requette = "SELECT * FROM Realisateur";
			Statement executeur = connexion.createStatement();
			ResultSet resultat = executeur.executeQuery(requette);
			
			while(resultat.next()) {
				System.out.println(resultat.getString("Rea_nom"));
			}
			resultat.close();
			executeur.close();
			connexion.close();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private static final void utiliserInsert() {
		try {
			Connection connexion = DriverManager.getConnection(DATABASE_URL, DATABASE_LOGIN, DATABASE_SECRET);
			String requette = "INSERT INTO Realisateur (Rea_nom, Rea_prenom) VALUE (?, ?);";
			PreparedStatement preparateur = connexion.prepareStatement(requette);
			preparateur.setString(1, "Rhimes");
			preparateur.setString(2, "Shonda");
			preparateur.execute();
			preparateur.close();
			connexion.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}