 package service;

import models.User;

public interface UserService {
	
	void register(User user);

    User login(String email, String password);

}
