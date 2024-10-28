package PtuHelp.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import PtuHelp.model.Keyboard;

@Repository
public class KeyboardDaoImpl implements KeyboardDao {

    @Autowired
    private SqlSession sqlSession;

    private static final String NAMESPACE = "PtuHelp.dao.KeyboardDao";

    @Override
    public List<Keyboard> getKeyboardsByMbtiType(String mbtiType) {
        return sqlSession.selectList(NAMESPACE + ".getKeyboardsByMbtiType", mbtiType);
    }
}
