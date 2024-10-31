package PtuHelp.controller;

import PtuHelp.model.Keyboard;
import PtuHelp.service.KeyboardService;
import PtuHelp.service.S3Uploader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

@Controller
public class KeyboardController {

    @Autowired
    private KeyboardService keyboardService;

    // 키보드 등록 페이지로 이동 (관리자 전용)
    @GetMapping("/keyboards/new")
    public String showKeyboardForm(HttpSession session, Model model) {
        Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");
        if (isAdmin == null || !isAdmin) {
            model.addAttribute("error", "관리자만 키보드를 등록할 수 있습니다.");
            return "redirect:/auth/login";
        }
        return "keyboardForm";  // 키보드 등록 폼 페이지
    }

 // 키보드 등록 처리 (관리자 전용)
    @PostMapping("/keyboards/upload")
    public String uploadKeyboardImage(
            HttpSession session,
            @RequestParam("type") String type,
            @RequestParam("name") String name,
            @RequestParam("image") MultipartFile imageFile, 
            Model model) {

        Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");
        Integer userId = (Integer) session.getAttribute("userId"); // 세션에서 userId 가져오기
        
        if (isAdmin == null || !isAdmin) {
            model.addAttribute("error", "접근 차단: 관리자만 접근 가능합니다.");
            return "redirect:/auth/login";
        }

        if (userId == null) {
            model.addAttribute("error", "로그인이 필요합니다.");
            return "redirect:/auth/login";
        }

        try {
            S3Uploader uploader = new S3Uploader();
            String filename = UUID.randomUUID().toString() + "_" + imageFile.getOriginalFilename();
            String key = "images/" + filename;
            String imageUrl = uploader.uploadFile(imageFile, key);

            // 키보드 정보 저장
            Keyboard keyboard = new Keyboard();
            keyboard.setType(type);
            keyboard.setKeyname(name);
            keyboard.setUrl(imageUrl);
            keyboard.setCreatedBy(userId); // createdBy에 세션의 userId 설정
            keyboardService.saveKeyboard(keyboard);

            // 업로드 성공 후 키보드 리스트로 리다이렉트
            return "redirect:/keyboards";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/error"; // 에러 페이지로 리다이렉트
        }
    }

    // 키보드 리스트
    @GetMapping("/keyboards")
    public String listKeyboards(Model model) {
        List<Keyboard> keyboards = keyboardService.getAllKeyboards();
        model.addAttribute("keyboards", keyboards);
        return "keyboardList";
    }

    // 상세 페이지 (키보드 ID로 접근)
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

 // 키보드 평점 추가
    @PostMapping("/keyboards/{keyboardId}/rate")
    public String rateKeyboard(
            @PathVariable("keyboardId") int keyboardId,
            @RequestParam("rating") int rating,
            HttpSession session, Model model) {
        
        Integer userId = (Integer) session.getAttribute("userId");
        if (userId == null) {
            // 세션에 userId가 없을 경우 로그인 페이지로 리다이렉트
            model.addAttribute("error", "로그인이 필요합니다.");
            return "redirect:/auth/login";
        }
        
        // 평점 추가 및 평균 평점 업데이트
        keyboardService.addRating(userId, keyboardId, rating);
        return "redirect:/keyboards/" + keyboardId;  // 업데이트된 평균 평점이 상세 페이지에 반영되도록 처리
    }
    
 // 키보드 삭제 (본인이 등록한 키보드만 삭제 가능)
    @PostMapping("/keyboards/{keyboardId}/delete")
    public String deleteKeyboard(@PathVariable int keyboardId, HttpSession session, Model model) {
        Integer userId = (Integer) session.getAttribute("userId");
        Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");

        if (isAdmin == null || !isAdmin) {
            model.addAttribute("error", "관리자만 키보드를 삭제할 수 있습니다.");
            return "redirect:/auth/login";
        }

        Keyboard keyboard = keyboardService.getKeyboardById(keyboardId);
        if (keyboard != null && keyboard.getCreatedBy() == userId) {
            keyboardService.deleteKeyboard(keyboardId);
        } else {
            model.addAttribute("error", "본인이 등록한 키보드만 삭제할 수 있습니다.");
        }
        return "redirect:/keyboards";
    }
    
    
}
