package PtuHelp.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MbtiResult {
	private Integer userId; // 로그인한 사용자 고유 번호
    private String result;
    
    public MbtiResult() {
    } 
    
    public MbtiResult(Integer userId, String result) {
        this.userId = userId;
        this.result = result;
    }
}
