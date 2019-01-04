package com.example.kuangjia.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;

@Component
public class myWebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private DataSource dataSource;
    String pwdQuery="select  username,password,available from t_user where username=?";
    String roleQuery="select u.username,r.role_name from t_user u,t_user_role ur,t_role r where u.id=ur.user_id and r" +
            ".id=ur.role_id and u.username=?";
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        PasswordEncoder passwordEncoder=new BCryptPasswordEncoder();
        auth.jdbcAuthentication()
            .passwordEncoder(passwordEncoder)
            .dataSource(dataSource)
            .usersByUsernameQuery(pwdQuery)
            .authoritiesByUsernameQuery(roleQuery);
    }
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable();
        http.authorizeRequests()
            .antMatchers("/b").access("hasRole('admin')").anyRequest().permitAll()
            .and().formLogin().and().httpBasic();

    }
}
