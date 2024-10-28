package PtuHelp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import PtuHelp.model.User;
import PtuHelp.service.UserService;

@Controller
public class MemberController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/auth/register")
	public String showRegisterPage() {
		return "join";
	}
	
	@PostMapping("/auth/register")
	public String register(User user, Model model) {
		try {
            userService.registerUser(user);
            return "redirect:/auth/login";
        } catch (IllegalArgumentException e) {
            model.addAttribute("error", e.getMessage());
            return "join";  // 회원가입 페이지로 다시 이동
        } catch (Exception e) {
            model.addAttribute("error", "An unexpected error occurred. Please try again.");
            return "join";  // 오류 발생 시 회원가입 페이지로 다시 이동
        }
		
        
    }
	
	@GetMapping("/auth/login")
	public String showLoginPage() {
	    return "login";
	}

	@PostMapping("/auth/login")
	public String login(@RequestParam("name") String name,
	                    @RequestParam("pw") String pw,
	                    HttpSession session, Model model) {
	    User user = userService.getUserByNameAndPassword(name, pw);
	    if (user != null) {
	        session.setAttribute("username", user.getName());
	        session.setAttribute("userId", user.getId());
	        return "redirect:/main";  // 메인 페이지로 리다이렉트
	    } else {
	        model.addAttribute("error", "잘못된 이름 또는 비밀번호입니다.");
	        return "login";  // 로그인 페이지로 다시 이동
	    }
	}
	
	@GetMapping("/auth/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/auth/login";
    }
	
	
	
}
