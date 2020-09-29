/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.service;

import com.shop.model.Emp;
import com.shop.model.MonthlySeal;
import com.shop.model.Orders;
import com.shop.model.Products;
import com.shop.model.UserMap;
import com.shop.model.Users;
import com.shop.model.Vendor;
import com.shop.repository.DeshboardRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Saiful
 */
@Service
public class DeshboardServiceImpl implements DeshboardService{

    @Autowired
    DeshboardRepository deshboardRepositoryImpl;

    @Override
    public List<Orders> getProductlist() {

        return deshboardRepositoryImpl.getProductlist();
    }

    @Override
    public double getlastWeektotal() {
        return deshboardRepositoryImpl.getlastWeektotal();
    }

    @Override
    public double getlastWeekpurchase() {
        return deshboardRepositoryImpl.getlastWeekpurchase();
    }

    @Override
    public double getlastmonthOrders() {
        return deshboardRepositoryImpl.getlastmonthOrders();
    }

    @Override
    public int gettotalUsers() {
        return deshboardRepositoryImpl.gettotalUsers();
    }

    @Override
    public List<UserMap> getusermap() {
        return deshboardRepositoryImpl.getusermap();
    }

    @Override
    public List<MonthlySeal> getMonthdate() {
        return deshboardRepositoryImpl.getMonthdate();
    }

    @Override
    public Users getUserditails(int id) {
        return deshboardRepositoryImpl.getUserditails(id);
    }

    @Override
    public List<Users> getUserlist() {
        return deshboardRepositoryImpl.getUserlist();
    }

    @Override
    public List<Emp> getEmplist() {
        return deshboardRepositoryImpl.getEmplist();
    }

    @Override
    public List<Vendor> getVendorIlist() {
        return deshboardRepositoryImpl.getVendorIlist();
    }

    @Override
    public List<Products> getProductslist() {
        return deshboardRepositoryImpl.getProductslist();
    }
}
