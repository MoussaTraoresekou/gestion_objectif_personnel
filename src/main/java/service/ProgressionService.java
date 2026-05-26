package service;

import java.util.List;
import dao.ProgressionDao;
import models.Progression;

public class ProgressionService {
	
	   private ProgressionDao dao;

	    public ProgressionService(ProgressionDao dao) {
	        this.dao = dao;
	    }

	    // ================= AJOUT PROGRESSION =================
	    public void enregistrerProgression(Progression p) {
	        dao.save(p);
	    }

	    // ================= LISTE PROGRESSIONS =================
	    public List<Progression> listerProgressions() {
	        return dao.findAll();
	    }

	    // ================= TAUX DE RÉUSSITE =================
	    public double calculTauxReussite() {

	        List<Progression> list = dao.findAll();

	        if (list.isEmpty()) return 0;

	        int total = list.size();
	        int faits = 0;

	        for (Progression p : list) {
	            if (p.isEtat()) {
	                faits++;
	            }
	        }

	        return (faits * 100.0) / total;
	    }

}
