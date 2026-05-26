package models;

public class ActionQuotidienne {
	    private int id;

	    private String description;

	    private String datePrevue;

	    private String dateRealisation;

	    private String statut;

	    private String commentaire;

	    private int planningId;

	    // getters setters

	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    public String getDescription() {
	        return description;
	    }

	    public void setDescription(String description) {
	        this.description = description;
	    }

	    public String getDatePrevue() {
	        return datePrevue;
	    }

	    public void setDatePrevue(String datePrevue) {
	        this.datePrevue = datePrevue;
	    }

	    public String getDateRealisation() {
	        return dateRealisation;
	    }

	    public void setDateRealisation(String dateRealisation) {
	        this.dateRealisation = dateRealisation;
	    }

	    public String getStatut() {
	        return statut;
	    }

	    public void setStatut(String statut) {
	        this.statut = statut;
	    }

	    public String getCommentaire() {
	        return commentaire;
	    }

	    public void setCommentaire(String commentaire) {
	        this.commentaire = commentaire;
	    }

	    public int getPlanningId() {
	        return planningId;
	    }

	    public void setPlanningId(int planningId) {
	        this.planningId = planningId;
	    }  
}
