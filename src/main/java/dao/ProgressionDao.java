package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import models.Progression;
public class ProgressionDao {
	

	

	    private Connection conn;

	    public ProgressionDao(Connection conn) {
	        this.conn = conn;
	    }

	    // ================= INSERT =================
	    public void save(Progression p) {

	        String sql = "INSERT INTO progression " +
	                "(date_progression, etat, commentaire, objectif_id, action_quotidienne_id) " +
	                "VALUES (?, ?, ?, ?, ?)";

	        try {
	            PreparedStatement ps = conn.prepareStatement(sql);

	            // Date (java.util.Date -> java.sql.Date)
	            ps.setDate(1, new java.sql.Date(p.getDateProgression().getTime()));

	            // boolean 
	            ps.setBoolean(2, p.isEtat());

	            ps.setString(3, p.getCommentaire());

	            ps.setInt(4, p.getObjectifId());

	            ps.setInt(5, p.getActionQuotidienneId());

	            ps.executeUpdate();

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	    // ================= SELECT ALL =================
	    public List<Progression> findAll() {

	        List<Progression> list = new ArrayList<>();

	        String sql = "SELECT * FROM progression";

	        try {
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {

	                Progression p = new Progression();

	                p.setId(rs.getInt("id"));

	                // SQL DATE -> java.util.Date
	                p.setDateProgression(rs.getDate("date_progression"));

	                p.setEtat(rs.getBoolean("etat"));

	                p.setCommentaire(rs.getString("commentaire"));

	                p.setObjectifId(rs.getInt("objectif_id"));

	                p.setActionQuotidienneId(rs.getInt("action_quotidienne_id"));

	                list.add(p);
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return list;
	    }

	    // ================= DELETE =================
	    public void delete(int id) {

	        String sql = "DELETE FROM progression WHERE id=?";

	        try {
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setInt(1, id);
	            ps.executeUpdate();

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	    // ================= FIND BY ID =================
	    public Progression findById(int id) {

	        String sql = "SELECT * FROM progression WHERE id=?";

	        try {
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setInt(1, id);

	            ResultSet rs = ps.executeQuery();

	            if (rs.next()) {

	                Progression p = new Progression();

	                p.setId(rs.getInt("id"));
	                p.setDateProgression(rs.getDate("date_progression"));
	                p.setEtat(rs.getBoolean("etat"));
	                p.setCommentaire(rs.getString("commentaire"));
	                p.setObjectifId(rs.getInt("objectif_id"));
	                p.setActionQuotidienneId(rs.getInt("action_quotidienne_id"));

	                return p;
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return null;
	    }
	}
