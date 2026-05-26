package models;

import models.enums.EnumRole;

public class Utilisateur extends User{
	
	 private int streakActuel;
	 private int meilleurStreak;
	 
	 
	    public Utilisateur() {
	        super();
	        this.role = EnumRole.UTILISATEUR;
	        this.streakActuel = 0;
	        this.meilleurStreak = 0;
	       
	    }

	    public Utilisateur(String nom, String prenom, String email, String motDePasse) {
	        super(nom, prenom, email, motDePasse, EnumRole.UTILISATEUR);
	        this.streakActuel = 0;
	        this.meilleurStreak = 0;
	    }
	    
	    
	    public int getStreakActuel() {
	        return streakActuel;
	    }

	    public void setStreakActuel(int streakActuel) {
	        this.streakActuel = streakActuel;
	    }

	    public int getMeilleurStreak() {
	        return meilleurStreak;
	    }

	    public void setMeilleurStreak(int meilleurStreak) {
	        this.meilleurStreak = meilleurStreak;
	    }
	
	

}
