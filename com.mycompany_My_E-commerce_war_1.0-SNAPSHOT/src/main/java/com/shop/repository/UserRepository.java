/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.repository;

import com.shop.model.Users;

/**
 *
 * @author Saiful
 */
public interface UserRepository {
     public Users getUserByIdAndPasswordFromDB(String userEmail);
    
}
