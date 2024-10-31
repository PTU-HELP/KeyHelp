package PtuHelp.dao;

import PtuHelp.model.User;

public interface UserDao {
	
	User getUserByUsername(String username);
	void insertUser(User user);
	
}
