package PtuHelp.dao;

import java.util.List;
import java.util.Optional;

import PtuHelp.model.Keyboard;

public interface KeyboardDao {
    List<Keyboard> getKeyboardsByMbtiType(String mbtiType); // 유형별 키보드 추천 목록 조회
    List<Keyboard> selectAllKeyboards();            // 전체 키보드 목록 조회
    Keyboard selectKeyboardById(int keyboardId); // 특정 키보드 조회 메서드
    void upsertRating(int userId, int keyboardId, int rating); // 평점 삽입
    Optional<Double> getAverageRatingByKeyboardId(int keyboardId); // 평점 평균 조회
}
