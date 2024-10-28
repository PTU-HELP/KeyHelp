package PtuHelp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import PtuHelp.dao.UserDao;
import PtuHelp.model.User;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Override
    public void registerUser(User user) {
        if (user.getPw() == null || user.getPw().isEmpty()) {
            throw new IllegalArgumentException("비밀번호는 비워둘 수 없습니다.");
        }
        user.setPw(passwordEncoder.encode(user.getPw()));  // 비밀번호 암호화 후 저장
        userDao.insertUser(user);
    }

    @Override
    public boolean authenticateUser(String name, String pw) {
        // 사용자 이름으로 데이터베이스에서 사용자 조회
        User user = userDao.getUserByUsername(name);
        // 사용자가 존재하고 비밀번호가 일치하는지 확인
        return user != null && passwordEncoder.matches(pw, user.getPw());
    }

    @Override
    public User findUserByUsername(String username) {
        return userDao.getUserByUsername(username);
    }

    @Override
    public Integer getUserIdByUsernameAndPassword(String name, String pw) {
        User user = userDao.getUserByUsername(name);
        if (user != null && passwordEncoder.matches(pw, user.getPw())) {
            return user.getId();  // 인증에 성공하면 사용자 ID 반환
        }
        return null;  // 인증 실패 시 null 반환
    }
    @Override
    public User getUserByNameAndPassword(String name, String pw) {
    User user = userDao.getUserByUsername(name);
    if (user != null && passwordEncoder.matches(pw, user.getPw())) {
        return user;
    }
    return null;  // 사용자 인증 실패 시 null 반환
}
}
