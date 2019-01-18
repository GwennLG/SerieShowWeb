package fr.glegalludec;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Saisons {





	private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/SerieShow?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private static final String DATABASE_LOGIN = "root";
	private static final String DATABASE_SECRET = "activ";


	public static void ajouterSaison (int Sa_ID_serie, int nombresaison)
	{

		Connection connection;
		try {
			connection = DriverManager.getConnection(DATABASE_URL, DATABASE_LOGIN, DATABASE_SECRET);
			String requete = "INSERT INTO episode (Sa_ID_serie) VALUE(?)";
			PreparedStatement preparateur = connection.prepareStatement(requete);
			for (int i=1; i<=nombresaison; i++)
			{
				preparateur.setInt(1, Sa_ID_serie);
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
