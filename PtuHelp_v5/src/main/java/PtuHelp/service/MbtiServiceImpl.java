package PtuHelp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import PtuHelp.dao.MbtiResultDao;
import PtuHelp.model.MbtiResult;

@Service
public class MbtiServiceImpl implements MbtiService{
	
	@Autowired
	private MbtiResultDao mbtiResultDao;

	@Override
	@Transactional
	public void saveTestResult(Integer userId, String result) {
		
	    MbtiResult mbtiResult = new MbtiResult(userId, result);
	    // MbtiResultDao의 insertResult 메서드 호출
	    mbtiResultDao.insertOrUpdateResult(mbtiResult);
	}
	
}
