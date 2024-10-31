package PtuHelp.dao;

import PtuHelp.model.Keyboard;
import java.util.List;
import java.util.Optional;

public interface KeyboardDao {
    List<Keyboard> getKeyboardsByMbtiType(String mbtiType);
    List<Keyboard> selectAllKeyboards();
    Keyboard selectKeyboardById(int keyboardId);
    void upsertRating(int userId, int keyboardId, int rating);
    Optional<Double> getAverageRatingByKeyboardId(int keyboardId);
    void insertKeyboard(Keyboard keyboard);
    void deleteKeyboard(int keyboardId);
}
