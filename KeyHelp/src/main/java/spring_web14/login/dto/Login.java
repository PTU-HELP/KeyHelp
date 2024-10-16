package spring_web14.login.dto;

import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Login {
	private String email;
	private String password;
	private String error; //error메시지 셋팅을 위한 것.
}
