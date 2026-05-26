package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import models.ActionQuotidienne;

public class ActionQuotidienneDao {
	   
	private Connection conn;

	    public ActionQuotidienneDao(Connection conn) {
	        this.conn = conn;
	    }

	    // ================= INSERT =================
	    public void save(ActionQuotidienne action) {

	        String sql = "INSERT INTO action_quotidienne(description, date_prevue) VALUES (?, ?)";

	        try {
	            PreparedStatement ps = conn.prepareStatement(sql);

	            ps.setString(1, action.getDescription());

	            // 🔥 CONVERSION STRING → SQL DATE
	            ps.setDate(2, java.sql.Date.valueOf(action.getDatePrevue()));

	            ps.executeUpdate();

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	    // ================= SELECT ALL =================
	    public List<ActionQuotidienne> findAll() {

	        List<ActionQuotidienne> list = new ArrayList<>();

	        String sql = "SELECT * FROM action_quotidienne";

	        try {
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {

	                ActionQuotidienne a = new ActionQuotidienne();

	                a.setId(rs.getInt("id"));
	                a.setDescription(rs.getString("description"));

	                // 🔥 SQL DATE → STRING
	                a.setDatePrevue(rs.getDate("date_prevue").toString());

	                list.add(a);
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return list;
	    }
	
	}