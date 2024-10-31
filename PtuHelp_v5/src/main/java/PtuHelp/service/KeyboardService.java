package PtuHelp.service;

import PtuHelp.model.Keyboard;
import java.util.List;
import java.util.Optional;

public interface KeyboardService {
    List<Keyboard> getKeyboardsByMbtiType(String mbtiType);
    List<Keyboard> getAllKeyboards();
    Keyboard getKeyboardById(int keyboardId);
    void addRating(int userId, int keyboardId, int rating);
    Optional<Double> getAverageRating(int keyboardId);
    void saveKeyboard(Keyboard keyboard);
    void deleteKeyboard(int keyboardId);
}
