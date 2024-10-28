package PtuHelp.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class User {
	private int id;
    private String name;
    private String pw;
    private String email;
    private String isadmin;
    
    public boolean isAdminUser() {
        return "true".equalsIgnoreCase(isadmin);
    }
}
