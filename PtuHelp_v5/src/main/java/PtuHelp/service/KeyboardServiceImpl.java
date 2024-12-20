package PtuHelp.service;

import PtuHelp.dao.KeyboardDao;
import PtuHelp.model.Keyboard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class KeyboardServiceImpl implements KeyboardService {

    @Autowired
    private KeyboardDao keyboardDao;

    @Override
    public List<Keyboard> getKeyboardsByMbtiType(String mbtiType) {
        return keyboardDao.getKeyboardsByMbtiType(mbtiType);
    }

    @Override
    public List<Keyboard> getAllKeyboards() {
        return keyboardDao.selectAllKeyboards();
    }

    @Override
    public Keyboard getKeyboardById(int keyboardId) {
        return keyboardDao.selectKeyboardById(keyboardId);
    }

    @Override
    public void addRating(int userId, int keyboardId, int rating) {
        keyboardDao.upsertRating(userId, keyboardId, rating);
        
    }

    @Override
    public Optional<Double> getAverageRating(int keyboardId) {
        return keyboardDao.getAverageRatingByKeyboardId(keyboardId);
    }

    @Override
    public void saveKeyboard(Keyboard keyboard) {
        keyboardDao.insertKeyboard(keyboard);
    }

    @Override
    public void deleteKeyboard(int keyboardId) {
        keyboardDao.deleteKeyboard(keyboardId);
    }
}
