package PtuHelp.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import PtuHelp.dao.MbtiResultDao;
import PtuHelp.dao.KeyboardDao;
import PtuHelp.model.Keyboard;
import PtuHelp.model.MbtiResult;

@Service("recommendationService")
public class RecommendationServiceImpl implements RecommendationService {

    @Autowired
    private MbtiResultDao mbtiResultDao;

    @Autowired
    private KeyboardDao keyboardDao;

    @Override
    public List<Keyboard> getRecommendedKeyboards(int userId) {
        // 사용자의 MBTI 결과 조회
        MbtiResult mbtiResult = mbtiResultDao.getResultsByUserId(userId);
        String mbtiType = mbtiResult.getResult();
        
        // 해당 MBTI 유형에 맞는 키보드 조회
        return keyboardDao.getKeyboardsByMbtiType(mbtiType);
    }
}
