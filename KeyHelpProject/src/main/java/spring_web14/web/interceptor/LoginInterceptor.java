package spring_web14.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import spring_web14.user.model.User;

//보드에 진입시 로그인이 안되어 있으면 로그인 화면으로 보냄..
@Component
public class LoginInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {		
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user == null) {
			String url = session.getServletContext().getContextPath() + "/login";
			response.sendRedirect(url);
			System.out.println("LoginInterceptor # preHandle() : NO PASS");
			return false;
		}
		System.out.println("LoginInterceptor # preHandle() : PASS");
		return true;
	}
}
