package PtuHelp.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import PtuHelp.model.Keyboard;
import PtuHelp.service.RecommendationService;

@Controller
public class RecommendationController {

    @Autowired
    private RecommendationService recommendationService;

    @GetMapping("/recommendation")
    public String showRecommendations(HttpSession session, Model model) {
        Integer userId = (Integer) session.getAttribute("userId");
        
        if (userId == null) {
            return "redirect:/auth/login";  // 로그인하지 않은 경우 로그인 페이지로 리다이렉트
        }

        // 사용자 ID를 사용하여 키보드 추천 목록 조회
        List<Keyboard> keyboards = recommendationService.getRecommendedKeyboards(userId);
        model.addAttribute("keyboards", keyboards);
        
        return "recommendation";  // 추천 결과를 보여줄 JSP 페이지
    }
}
