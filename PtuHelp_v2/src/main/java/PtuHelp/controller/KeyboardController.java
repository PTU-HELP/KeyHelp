package PtuHelp.controller;

import PtuHelp.model.Keyboard;
import PtuHelp.service.KeyboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.List;

import javax.servlet.http.HttpSession;


@Controller
public class KeyboardController {

    @Autowired
    private KeyboardService keyboardService;
    
    // 키보드 리스트
    @GetMapping("/keyboards")
    public String listKeyboards(Model model) {
        List<Keyboard> keyboards = keyboardService.getAllKeyboards();
        model.addAttribute("keyboards", keyboards);
        return "keyboardList";
    }
    
    // 상세 페이지 메서드 추가
    @GetMapping("/keyboards/{keyboardId}")
    public String keyboardDetail(@PathVariable("keyboardId") int keyboardId, Model model) {
        Keyboard keyboard = keyboardService.getKeyboardById(keyboardId);
        if (keyboard == null) {
            return "redirect:/keyboards"; // 키보드를 찾지 못할 경우 리스트 페이지로 리다이렉트
        }
        keyboardService.getAverageRating(keyboardId).ifPresent(average -> keyboard.setAverageRating(average));
        model.addAttribute("keyboard", keyboard);
        return "keyboardDetail";
    }
    
    // 평점 추가
    @PostMapping("/keyboards/{keyboardId}/rate")
    public String rateKeyboard(@PathVariable("keyboardId") int keyboardId,
                               @RequestParam("rating") int rating,
                               HttpSession session, Model model) {
        Integer userId = (Integer) session.getAttribute("userId");
        if (userId == null) {
            model.addAttribute("error", "로그인이 필요합니다.");
            return "redirect:/auth/login";
        }
        keyboardService.addRating(userId, keyboardId, rating);
        return "redirect:/keyboards/" + keyboardId;
    }
}
