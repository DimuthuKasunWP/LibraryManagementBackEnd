package lk.ac.cmb.ucsc.LibraryManagement.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
public class WebConfig {

    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                System.out.println("CORS Enabled");
                registry.addMapping("/api/v1/*")
                        .allowedOrigins("http://localhost:8081")
                        .allowedHeaders("*")
                        .exposedHeaders("Access-Control-Allow-Origin","Access-Control-Allow-Credentials","Authorization")
                        .allowedMethods("HEAD", "OPTIONS", "GET", "POST", "PUT", "PATCH", "DELETE");
//                        .allowCredentials(true);
            }
        };
    }
}
