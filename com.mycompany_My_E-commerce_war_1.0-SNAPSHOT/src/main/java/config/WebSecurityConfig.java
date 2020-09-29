/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

/**
 *
 * @author User
 */
//import org.springframework.security.config.annotation.authentication.builders.*;  
import com.shop.service.UserDetailsServiceImp;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.*;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


@EnableWebSecurity
@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Bean
    @Override
    public UserDetailsService userDetailsService() {
        return new UserDetailsServiceImp();
    }

   @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    ;
  
  @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService()).passwordEncoder(passwordEncoder());
    }
    
    
    
    

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        
        
        
        
        http.authorizeRequests()
                 
                .antMatchers("/index", "/", "/login").permitAll()
                .antMatchers("/normal_user/**").authenticated()
                .antMatchers("/admin_user/**").hasRole("ADMIN")             
//              .anyRequest().authenticated()
                

                .and()
                .formLogin()
                .loginPage("/login")
                
                
                .and()
                .logout()
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout_2"))
                .logoutSuccessUrl("/logout_success.html");

    }
}

