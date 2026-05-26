package models;

import java.util.Date;

public class Progression {

	     private int id;
	     private Date dateProgression;
	     private boolean etat; 
	     private String commentaire;

	     private int objectifId;
	     private int actionQuotidienneId;

	     public Progression() {}

	     public Progression(int id, Date dateProgression, boolean etat,
	                        String commentaire, int objectifId,
	                        int actionQuotidienneId) {
	         this.id = id;
	         this.dateProgression = dateProgression;
	         this.etat = etat;
	         this.commentaire = commentaire;
	         this.objectifId = objectifId;
	         this.actionQuotidienneId = actionQuotidienneId;
	     }

	  // ===================== GETTERS =====================

	     public int getId() {
	         return id;
	     }

	     public Date getDateProgression() {
	         return dateProgression;
	     }

	     public boolean isEtat() {
	         return etat;
	     }

	     public String getCommentaire() {
	         return commentaire;
	     }

	     public int getObjectifId() {
	         return objectifId;
	     }

	     public int getActionQuotidienneId() {
	         return actionQuotidienneId;
	     }

	     // ===================== SETTERS =====================

	     public void setId(int id) {
	         this.id = id;
	     }

	     public void setDateProgression(Date dateProgression) {
	         this.dateProgression = dateProgression;
	     }

	     public void setEtat(boolean etat) {
	         this.etat = etat;
	     }

	     public void setCommentaire(String commentaire) {
	         this.commentaire = commentaire;
	     }

	     public void setObjectifId(int objectifId) {
	         this.objectifId = objectifId;
	     }

	     public void setActionQuotidienneId(int actionQuotidienneId) {
	         this.actionQuotidienneId = actionQuotidienneId;
	     }

}
