package PtuHelp.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

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

    @Override
    public List<Keyboard> selectAllKeyboards() {
        return sqlSession.selectList(NAMESPACE + ".selectAllKeyboards");
    }
    
    @Override
    public Keyboard selectKeyboardById(int keyboardId) {
        return sqlSession.selectOne(NAMESPACE + ".selectKeyboardById", keyboardId);
    }
    
    @Override
    public void upsertRating(int userId, int keyboardId, int rating) {
        sqlSession.insert(NAMESPACE + ".upsertRating", Map.of("userId", userId, "keyboardId", keyboardId, "rating", rating));
    }
    
    @Override
    public Optional<Double> getAverageRatingByKeyboardId(int keyboardId) {
        return Optional.ofNullable(sqlSession.selectOne(NAMESPACE + ".getAverageRatingByKeyboardId", keyboardId));
    }

}
