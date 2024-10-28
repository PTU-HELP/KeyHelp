package PtuHelp.dao;

import PtuHelp.model.MbtiResult;

public interface MbtiResultDao {
	
    MbtiResult getResultsByUserId(int userId);
    
    String getMbtiResultByUserId(int userId);
    
    void insertOrUpdateResult(MbtiResult mbtiResult);
}