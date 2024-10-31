package PtuHelp.dao;

import PtuHelp.model.Keyboard;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Repository
public class KeyboardDaoImpl implements KeyboardDao {

    private static final String NAMESPACE = "PtuHelp.dao.KeyboardDao";

    @Autowired
    private SqlSession sqlSession;

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

    @Override
    public void insertKeyboard(Keyboard keyboard) {
        sqlSession.insert(NAMESPACE + ".insertKeyboard", keyboard);
    }

    @Override
    public void deleteKeyboard(int keyboardId) {
        sqlSession.delete(NAMESPACE + ".deleteKeyboard", keyboardId);
    }
    
    
}
