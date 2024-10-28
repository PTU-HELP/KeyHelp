package PtuHelp.service;

import PtuHelp.model.User;

public interface UserService {
	void registerUser(User user);
	boolean authenticateUser(String name, String pw);
	User findUserByUsername(String name);
	Integer getUserIdByUsernameAndPassword(String name, String pw);
	User getUserByNameAndPassword(String name, String pw);
}
