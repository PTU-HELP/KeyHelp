package PtuHelp.service;

import PtuHelp.model.User;

public interface UserService {
	void registerUser(User user);
	User findUserByUsername(String name);
	User getUserByNameAndPassword(String name, String pw);
}
