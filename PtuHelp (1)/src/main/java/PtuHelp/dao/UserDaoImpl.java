package PtuHelp.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import PtuHelp.model.User;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "PtuHelp.mapper.MemberMapper";
	
	@Override
	public User getUserByUsername(String username) {
		return sqlSession.selectOne(namespace + ".getUserByUsername", username);
	}

	@Override
	public void insertUser(User user) {
		sqlSession.insert(namespace + ".insertUser", user);
		
	}

}
