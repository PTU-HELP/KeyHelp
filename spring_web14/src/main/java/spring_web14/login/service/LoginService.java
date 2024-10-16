package spring_web14.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring_web14.login.dto.Login;
import spring_web14.user.model.User;
import spring_web14.user.repository.UserMapper;

@Service
public class LoginService {
	@Autowired
	private UserMapper userMapper;

	public void authenticate(Login login) {
		User user = userMapper.selectByEmail(login.getEmail());
		if (user == null) {
			login.setError("Email does not exist.");
		} else {
			if (!user.getPassword().equals(login.getPassword())) {
				login.setError("Password is not correct.");
			} else {
				login.setError(null);
			}
		}
	}
}
