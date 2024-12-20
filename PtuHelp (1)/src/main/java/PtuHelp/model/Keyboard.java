package PtuHelp.model;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Keyboard {
    private int kId;           // 키보드 ID
    private String type;       // 키보드 유형 (MBTI 유형과 매칭)
    private String url;        // 키보드 이미지 URL
    private String keyname;    // 키보드 이름
}
