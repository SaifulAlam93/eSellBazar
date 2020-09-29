/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.service;


//import dao.UserRepositoryImpl;
//import model.SystemUser;
import com.shop.model.Users;
import com.shop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author User
 */
@Service
public class SecurityServiceImpl implements SecurityService{

    @Autowired
    UserRepository  repository;

    @Override
    public Users getUserByIdAndPasswordFromDB(String userEmail) {

        Users systemUser = repository.getUserByIdAndPasswordFromDB(userEmail);

        return systemUser;
    }

}
