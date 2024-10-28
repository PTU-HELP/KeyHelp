package PtuHelp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import PtuHelp.model.MbtiResult;
import PtuHelp.service.MbtiService;

@Controller
public class MbtiController {

    @Autowired
    private MbtiService mbtiService;

    @GetMapping("/mbti/test")
    public String showTestPage(HttpSession	session, Model model) {
        if (session.getAttribute("userId") == null) {
            model.addAttribute("error", "MBTI 검사를 진행하려면 로그인해주세요.");
            return "redirect:/auth/login";
        }
        return "mbtiTest"; // MBTI 검사 페이지
    }


    @PostMapping("/mbti/submit")
    public String submitTest(@RequestParam("result") String result, HttpSession session, Model model) {
    	if (session.getAttribute("userId") == null) {
            model.addAttribute("error", "MBTI 검사를 진행하려면 로그인해주세요.");
            return "redirect:/auth/login";
        }

        // 검사 결과 처리 로직
        Integer userId = (Integer) session.getAttribute("userId");
        // 결과를 데이터베이스에 저장
        mbtiService.saveTestResult(userId, result);
        
        model.addAttribute("result", result);
        
        return "result"; // 검사 결과 페이지
    }
}
