/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.repository;

import com.shop.model.Users;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository
public class UserRepositoryImpl implements UserRepository{

    @Autowired
    private JdbcTemplate jdbctemplate;
    
    Users systemUser2;
    @Override
    public Users getUserByIdAndPasswordFromDB(String userEmail) {

        Users systemUser;

        String sql;
        sql = "SELECT * FROM users where email='" + userEmail + "'";
        systemUser = (Users) jdbctemplate.queryForObject(sql, new BeanPropertyRowMapper(Users.class));

        String pass = systemUser.getPassword();
        pass = new BCryptPasswordEncoder().encode(pass);
        systemUser.setPassword(pass);

        systemUser2 = systemUser;
        return systemUser;
    }

}
