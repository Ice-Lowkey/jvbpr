package jvb.vn.prj.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration {
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests(auth -> auth
                        .requestMatchers("/backend/**").authenticated() // Yêu cầu xác thực
                        .anyRequest().permitAll() // Cho phép truy cập các đường dẫn khác
                )
                .formLogin(login -> login
                        .loginPage("/_admin/login") // Trang đăng nhập tùy chỉnh
                        .loginProcessingUrl("/_admin/dologin") // Đường dẫn xử lý đăng nhập
                        .usernameParameter("username") // Tham số username
                        .passwordParameter("password") // Tham số password
                        .defaultSuccessUrl("/home") // Đường dẫn mặc định sau khi đăng nhập thành công
                        .failureUrl("/_admin/login?message=error") // Trang trả về nếu đăng nhập thất bại
                )
                .csrf(AbstractHttpConfigurer::disable); // Tắt CSRF (chỉ dùng cho mục đích phát triển)

        return http.build();
    }
}