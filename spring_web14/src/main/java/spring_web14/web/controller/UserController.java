package spring_web14.web.controller;

import java.util.List;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import spring_web14.user.model.User;
import spring_web14.user.repository.UserMapper;

@Controller
@RequestMapping("/users")
public class UserController {
	@Autowired
	private UserMapper userMapper;
	
	@GetMapping
	@ResponseBody
	public Object getUsersView() {
		List<User> users = userMapper.selectAll();
		return users;
	}
	
	@PostMapping("/enroll")
	public String postUser(User user, Model model, 
	HttpSession session, RedirectAttributes redirectAttributes) {
		User duplicatedUser = userMapper.selectByEmail(user.getEmail());
		if(duplicatedUser == null) {
			userMapper.insert(user);
			redirectAttributes.addFlashAttribute("result", "OK");
		}else {
			redirectAttributes.addFlashAttribute("result", "FAIL");
			redirectAttributes.addFlashAttribute("error",
					"FAIL : Email is duplicated");
		}
		return "redirect:/login";
	}
	
	
	
}
