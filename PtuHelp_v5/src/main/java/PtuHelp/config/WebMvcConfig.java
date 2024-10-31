package PtuHelp.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
public class WebMvcConfig implements WebMvcConfigurer{
	
	@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**")
                .addResourceLocations("/resources/");
    }

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        registry.jsp("/WEB-INF/views/", ".jsp");
    }
    
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/keyboards/upload") // 특정 엔드포인트에 대한 CORS 설정
                .allowedOrigins("*")             // 모든 출처에서 접근 허용
                .allowedMethods("POST")          // 허용할 HTTP 메서드 설정
                .allowCredentials(false);        // 자격 증명 사용을 비허용 (필요시 true로 변경)
        
        // 필요 시 다른 엔드포인트나 설정 추가 가능
    }
    
	
}
