package PtuHelp.service;

import PtuHelp.model.Keyboard;
import java.util.List;
import java.util.Optional;

public interface KeyboardService {
    List<Keyboard> getKeyboardsByMbtiType(String mbtiType);
    List<Keyboard> getAllKeyboards();             // 전체 키보드 목록 조회
    Keyboard getKeyboardById(int keyboardId);
    void addRating(int userId, int keyboardId, int rating); // 평점 추가 메서드
    Optional<Double> getAverageRating(int keyboardId);      // 평점 평균 조회 메서드
}
