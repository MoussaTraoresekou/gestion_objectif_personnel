package models;

import models.enums.EnumRole;

public class Admin extends User {
	
	  public Admin() {
		  this.role = EnumRole.ADMIN;
	    }

	    public Admin(String nom, String prenom, String email, String password) {
	        super(nom, prenom, email, password, EnumRole.ADMIN);
	    }

}
