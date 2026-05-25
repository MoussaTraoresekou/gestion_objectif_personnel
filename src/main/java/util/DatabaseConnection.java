package util;

import java.sql.Connection;
import java.sql.DriverManager;
public class DatabaseConnection {
	// ============================================
    // CHAQUE MEMBRE MODIFIE CES 3 LIGNES
    // PUIS TAPE DANS LE TERMINAL :
    // git update-index --assume-unchanged
    // src/main/java/util/DatabaseConnection.java
    // ============================================

	  private static final String URL =
	            "jdbc:mysql://localhost:3306/gestion_objectifs";

	    private static final String USER =
	            "root";

	    private static final String PASSWORD =
	            "123456"; // mets 123456 si ton MySQL a ce mot de passe

	    public static Connection getConnection() {
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            return DriverManager.getConnection(
	                    URL,
	                    USER,
	                    PASSWORD
	            );

	        } catch (Exception e) {
	            throw new RuntimeException(
	                    "Impossible de se connecter à MySQL.",
	                    e
	            );
	        }
	    }
}