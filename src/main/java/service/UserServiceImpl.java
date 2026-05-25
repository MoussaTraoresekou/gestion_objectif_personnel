package service;

import dao.UserDao;
import dao.UserDaoImpl;
import models.User;
import util.MotDePasseUtil;

public class UserServiceImpl implements UserService{
	
	private final UserDao userDao = new UserDaoImpl();

	@Override
	public void register(User user) {
		 if (userDao.emailExists(user.getEmail())) {
	            throw new RuntimeException("Cet email existe déjà.");
	        }
	        user.setMotDePasse( MotDePasseUtil.hashPassword(user.getMotDePasse()));

	        userDao.save(user);
	}

	@Override
	public User login(String email, String password) {
		User user = userDao.findByEmail(email);

        if (user == null) {
            return null;
        }

        String hashedPassword = MotDePasseUtil.hashPassword(password);

        if (!user.getMotDePasse().equals(hashedPassword)) {
            return null;
        }

        return user;
	}

}
