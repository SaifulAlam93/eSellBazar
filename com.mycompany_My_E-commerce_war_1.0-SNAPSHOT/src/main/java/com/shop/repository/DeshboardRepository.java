/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.repository;

import com.shop.model.Emp;
import com.shop.model.MonthlySeal;
import com.shop.model.Orders;
import com.shop.model.Products;
import com.shop.model.UserMap;
import com.shop.model.Users;
import com.shop.model.Vendor;
import java.util.List;

/**
 *
 * @author gmsif
 */
public interface DeshboardRepository {

    public List<Orders> getProductlist();

    public double getlastWeektotal();

    public double getlastWeekpurchase();

    public double getlastmonthOrders();

    public int gettotalUsers();

    public List<UserMap> getusermap();

    public List<MonthlySeal> getMonthdate();

    public Users getUserditails(int id);

    public List<Users> getUserlist();

    public List<Emp> getEmplist();

    public List<Vendor> getVendorIlist();

    public List<Products> getProductslist();

}
