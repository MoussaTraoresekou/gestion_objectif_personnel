package dao;

import models.User;

public interface UserDao {
	
	void save(User user);

    User findByEmail(String email);

    boolean emailExists(String email);

}
