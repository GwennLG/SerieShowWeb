package fr.glegalludec;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Episodes {
	private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/SerieShow?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private static final String DATABASE_LOGIN = "root";
	private static final String DATABASE_SECRET = "activ";



	public static void ajouterEpisode (int idSerie, int idSaison,int nombreEpisode, int temps, boolean vu)
	{

		Connection connection;
		try {
			connection = DriverManager.getConnection(DATABASE_URL, DATABASE_LOGIN, DATABASE_SECRET);
			String requete = "INSERT INTO episode (ep_ID_serie, ep_ID_Saison, ep_temps, ep_vu) VALUE(?,?,?,?)";
			PreparedStatement preparateur = connection.prepareStatement(requete);
			for (int i=1; i<=nombreEpisode; i++)
			{
				preparateur.setInt(1, idSerie);
				preparateur.setInt(2, idSaison);
				preparateur.setInt(3, temps);
				preparateur.setBoolean(4, vu);

				preparateur.execute();
				
			}
			preparateur.close();
			connection.close();
						
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}
}