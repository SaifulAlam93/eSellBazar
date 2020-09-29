/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.service;

import com.shop.model.Cart;
import com.shop.model.Orders;
import com.shop.model.Products;
import com.shop.model.Shipment;
import com.shop.model.Users;
import com.shop.repository.Repository;
import java.util.LinkedList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Saiful
 */
@org.springframework.stereotype.Service
public class ServiceImpl implements Service {

    @Autowired
    Repository repository;

    @Override
    public Users getUserbyId(int i) {
        return repository.getUserbyId(i);
    }

    public LinkedList<Cart> cartList = new LinkedList<>();

    @Override
    public List<Products> geFoodProductlist() {
        return repository.geFoodProductlist();
    }

    @Override
    public List<Products> getElectricityProductlist() {
        return repository.getElectricityProductlist();
    }

    @Override
    public boolean addCart(Cart cart) {

        return repository.addCart(cart);
    }

    @Override
    public Products geProductlist(int id) {
        return repository.geProductlist(id);

    }

    @Override
    public List<Cart> getCartList(int id) {
        return repository.getCartList(id);
    }

    @Override
    public boolean addOrders(Orders orders, int id, List<Cart> cartlist) {
        return repository.addOrders(orders, id, cartlist);
    }

    @Override
    public Products getProduct(int id) {
        return repository.getProduct(id);
    }

    @Override
    public boolean deleteCart(int id3) {
        return repository.deleteCart(id3);
    }

    @Override
    public boolean addshipment(Shipment shipment) {
        return repository.addshipment(shipment);

    }

    @Override
    public boolean deleteUserCart(int id) {
        return repository.deleteUserCart(id);
    }

    @Override
    public List<Orders> getOrderList(int id) {
        return repository.getOrderList(id);
    }

    @Override
    public void setcolor(Integer id, String color) {
        repository.setcolor(id, color);

    }

    @Override
    public void setSize(Integer id, String size) {
        repository.setSize(id, size);
    }

    @Override
    public void setQuantity(Integer id, Integer qua) {
        repository.setSize(id, qua);
    }

    @Override
    public List<Products> getFurnitureProductlist() {
        return repository.getFurnitureProductlist();
    }

    @Override
    public List<Products> getFashionList() {
        return repository.getFashionList();
    }

    @Override
    public List<Products> getVehiclesList() {
        return repository.getVehiclesList();
    }

    @Override
    public List<Products> getJewelProductlist() {
        return repository.getJewelProductlist();
    }

    @Override
    public List<Products> getGarmentsList() {
        return repository.getGarmentsList();
    }

    @Override
    public List<Products> geAllProductlist() {
        return repository.getAllProductlist();
    }

    @Override
    public List<Products> getProductsByPage(int pageid, int total) {
        return repository.getProductsByPage(pageid, total);
    }

    @Override
    public List<Products> getProductsBySearchlist(String name, int pageid, int total) {
        return repository.getProductsBySearchlist(name, pageid, total);
    }

    @Override
    public List<Products> getProductsByCategory(String category) {
        return repository.getProductsByCategory(category);
    }

}
