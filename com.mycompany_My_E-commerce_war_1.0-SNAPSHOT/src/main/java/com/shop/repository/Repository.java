/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.repository;

import com.shop.model.Cart;
import com.shop.model.Orders;
import com.shop.model.Products;
import com.shop.model.Shipment;
import com.shop.model.Users;
import java.util.List;

/**
 *
 * @author Saiful
 */
public interface Repository {

    public List<Products> geFoodProductlist();

    public List<Products> getElectricityProductlist();

    public List<Products> getJewelProductlist();

    public List<Products> getFurnitureProductlist();

    public boolean addCart(Cart cart);

    public Products geProductlist(int id);

    public Users getUserbyId(int i);

    public List<Cart> getCartList(int id);

    public Products getProduct(int id);

    public boolean deleteCart(int id3);

    public boolean addshipment(Shipment shipment);

    public Orders getorderin(int id);

    public boolean addOrders(Orders orders, int id, List<Cart> cartlist);

    public boolean deleteUserCart(int id);

    public List<Orders> getOrderList(int id);

    public void setcolor(Integer id, String color);

    public void setSize(Integer id, String size);

    public void setSize(Integer id, Integer qua);

    public List<Products> getFashionList();

    public List<Products> getVehiclesList();

    public List<Products> getGarmentsList();

    public List<Products> getAllProductlist();

    public List<Products> getProductsByPage(int pageid, int total);

    public List<Products> getProductsBySearchlist(String name, int pageid, int total);

    public List<Products> getProductsByCategory(String category);
}
