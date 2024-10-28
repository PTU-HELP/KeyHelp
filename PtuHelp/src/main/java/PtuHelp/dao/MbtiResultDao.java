package PtuHelp.dao;

import PtuHelp.model.MbtiResult;

public interface MbtiResultDao {
	
    void insertResult(MbtiResult mbtiResult);

    MbtiResult getResultsByUserId(int userId);
}