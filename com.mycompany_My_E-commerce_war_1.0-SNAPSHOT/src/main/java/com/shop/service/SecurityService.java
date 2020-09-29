/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.service;

import com.shop.model.Users;

/**
 *
 * @author gmsif
 */
public interface SecurityService {
     public Users getUserByIdAndPasswordFromDB(String userEmail);
    
}
