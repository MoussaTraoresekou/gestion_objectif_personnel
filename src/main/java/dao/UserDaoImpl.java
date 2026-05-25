package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import models.Admin;
import models.User;
import models.Utilisateur;
import models.enums.EnumRole;
import util.DatabaseConnection;

public class UserDaoImpl implements UserDao{

	@Override
	public void save(User user) {
		   String sql = """
		            INSERT INTO utilisateur(nom, prenom, email, mot_de_passe, role)
		            VALUES (?, ?, ?, ?, ?)
		        """;

		        try (
		                Connection connection = DatabaseConnection.getConnection();
		                PreparedStatement ps = connection.prepareStatement(sql)
		        ) {
		            ps.setString(1, user.getNom());
		            ps.setString(2, user.getPrenom());
		            ps.setString(3, user.getEmail());
		            ps.setString(4, user.getMotDePasse());
		            ps.setString(5, user.getRole().name());

		            ps.executeUpdate();

		        } catch (Exception e) {
		            throw new RuntimeException("Erreur inscription : " + e.getMessage());
		        }
		
	}

	@Override
	public User findByEmail(String email) {
		String sql = "SELECT * FROM utilisateur WHERE email = ?";

        try (
                Connection connection = DatabaseConnection.getConnection();
                PreparedStatement ps = connection.prepareStatement(sql)
        ) {
            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String role = rs.getString("role");

                User user;

                if ("ADMIN".equals(role)) {
                    user = new Admin();
                } else {
                    user = new Utilisateur();
                }

                user.setId(rs.getInt("id"));
                user.setNom(rs.getString("nom"));
                user.setPrenom(rs.getString("prenom"));
                user.setEmail(rs.getString("email"));
                user.setMotDePasse(rs.getString("mot_de_passe"));
                user.setRole(EnumRole.valueOf(role));

                return user;
            }

        } catch (Exception e) {
            throw new RuntimeException("Erreur recherche utilisateur : " + e.getMessage());
        }

        return null;
	}

	@Override
	public boolean emailExists(String email) {
		 return findByEmail(email) != null;
	}
	
	

}
