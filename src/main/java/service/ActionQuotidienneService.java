package service;


import java.util.List;
import dao.ActionQuotidienneDao;
import models.ActionQuotidienne; 

public class ActionQuotidienneService {
	




	    private ActionQuotidienneDao dao;

	    public ActionQuotidienneService(ActionQuotidienneDao dao) {
	        this.dao = dao;
	    }

	    // ================= AJOUT ACTION =================
	    public void ajouterAction(ActionQuotidienne action) {
	        dao.save(action);
	    }

	    // ================= LISTE ACTIONS =================
	    public List<ActionQuotidienne> listerActions() {
	        return dao.findAll();
	    }
}
