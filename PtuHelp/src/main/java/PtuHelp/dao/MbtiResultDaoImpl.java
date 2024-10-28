package PtuHelp.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import PtuHelp.model.MbtiResult;

@Repository("mbtiResultDao")
public class MbtiResultDaoImpl implements MbtiResultDao {

    @Autowired
    private SqlSession sqlSession;

    // 네임스페이스를 MbtiResultDao와 일치하도록 수정
    private static final String namespace = "PtuHelp.dao.MbtiResultDao";

    @Override
    public MbtiResult getResultsByUserId(int userId) {
        return sqlSession.selectOne(namespace + ".getResultsByUserId", userId);
    }

	@Override
	public void insertResult(MbtiResult mbtiResult) {
		sqlSession.insert(namespace + ".insertResult", mbtiResult);
		
	}
}