package spring_web14.user.model;

import lombok.Data;
import lombok.AllArgsConstructor; // 모든 멤버변수를 받는 생성자 
import lombok.NoArgsConstructor; // 디폴트 생성자.

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
	private String email;
	private String password;	
}
