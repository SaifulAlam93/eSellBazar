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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Saiful
 */
@org.springframework.stereotype.Repository
public class RepositoryImp implements Repository {

    @Autowired
    private JdbcTemplate jdbctemplate;

    Users systemUser2;

    @Override
    public List<Products> geFoodProductlist() {
        List<Products> products;
        String sql = "select id,product_id,product_name,image,old_price,category,\n"
                + "new_price,quantity,company,description ,cost_price,stock_ditails,cash_memo,\n"
                + "	   date(date_time) as date,\n"
                + "	   time(date_time) time   from products where category=\"food\";";
        products = jdbctemplate.query(sql, new BeanPropertyRowMapper(Products.class));
        return products;

    }

    @Override
    public List<Products> getElectricityProductlist() {
        List<Products> foodproducts;
        String sql = "select id,product_id,product_name,image,old_price,category,\n"
                + "new_price,quantity,company,description ,cost_price,stock_ditails,cash_memo,\n"
                + "	   date(date_time) as date,\n"
                + "	   time(date_time) time   from products where category=\"electronics\";";

        foodproducts = jdbctemplate.query(sql, new BeanPropertyRowMapper(Products.class));
        return foodproducts;
    }

    @Override
    public List<Products> getJewelProductlist() {
        List<Products> foodproducts;
        String sql = "select id,product_id,product_name,image,old_price,category,\n"
                + "new_price,quantity,company,description ,cost_price,stock_ditails,cash_memo,\n"
                + "	   date(date_time) as date,\n"
                + "	   time(date_time) time   from products where category=\"juelary\";";

        foodproducts = jdbctemplate.query(sql, new BeanPropertyRowMapper(Products.class));
        return foodproducts;
    }

    @Override
    public List<Products> getFurnitureProductlist() {
        List<Products> foodproducts;
        String sql = "select id,product_id,product_name,image,old_price,category,\n"
                + "new_price,quantity,company,description ,cost_price,stock_ditails,cash_memo,\n"
                + "	   date(date_time) as date,\n"
                + "	   time(date_time) time   from products where category=\"furniture\";";

        foodproducts = jdbctemplate.query(sql, new BeanPropertyRowMapper(Products.class));
        return foodproducts;
    }

    @Override
    public boolean addCart(Cart cart) {
        boolean successfullyInserted;
        String sql = "insert into cart(p_id,coustomerId,product_id,image,vendormail,product_name,color,category,size,new_price,cost_price)\n"
                + " values('" + cart.getP_id() + "'," + cart.getCoustomerId() + "," + cart.getProduct_id() + ",'" + cart.getImage() + "','" + cart.getVendormail() + "','" + cart.getProduct_name() + "','" + cart.getColor() + "','" + cart.getCategory() + "','" + cart.getSize() + "'," + cart.getNew_price() + "," + cart.getCost_price() + ");";
        jdbctemplate.update(sql);

        successfullyInserted = true;
        return successfullyInserted;
    }

    @Override
    public Products geProductlist(int id) {

        Products product;
        String sql = "select id,vendormail,product_id,product_name,image,old_price,category,\n"
                + "new_price,quantity,company,description,cost_price,stock_ditails,cash_memo,\n"
                + "	   date(date_time) as date,\n"
                + "	   time(date_time) time   from products where id=" + id + ";";

        product = (Products) jdbctemplate.queryForObject(sql, new BeanPropertyRowMapper(Products.class));

        return product;

    }

    @Override
    public Users getUserbyId(int i) {

        String sqlu = "select * from users where id=" + i + ";";
        systemUser2 = (Users) jdbctemplate.queryForObject(sqlu, new BeanPropertyRowMapper(Users.class));

        return systemUser2;
    }

    @Override
    public List<Cart> getCartList(int id) {
        List<Cart> cartlist;

        String sql = "select id,coustomerId,product_id,product_name,image,\n"
                + "color,company,vendormail,quntity,p_id,category,size,new_price,cost_price, date(date_time) as date,\n"
                + "time(date_time) time from cart where coustomerId=" + id + ";";
        cartlist = jdbctemplate.query(sql, new BeanPropertyRowMapper(Cart.class));
        return cartlist;
    }

    @Override
    public Products getProduct(int id) {
        Products product;
        String sql = "select id,product_id,product_name,image,"
                + "category,old_price,new_price,cost_price,quantity,"
                + "cash_memo,company,description,stock_ditails"
                + " from products where id=" + id;

        product = (Products) jdbctemplate.queryForObject(sql, new BeanPropertyRowMapper(Products.class));

        return product;
    }

    @Override
    public boolean deleteCart(int id3) {
        boolean status;
        String deleteQuery = "delete from cart where id =" + id3;
        jdbctemplate.update(deleteQuery);
        status = true;
        return status;
    }

    @Override
    public boolean addshipment(Shipment shipment) {

        boolean successfullyInserted;
        String sql = "insert into shipment (order_id,district,thana,postcode,ditail) values(" + shipment.getOrder_id() + ",'" + shipment.getDistrict() + "','" + shipment.getThana() + "','" + shipment.getPostcode() + "','" + shipment.getDitail() + "' ) ";
        jdbctemplate.update(sql);
        successfullyInserted = true;

        return successfullyInserted;
    }

    @Override
    public Orders getorderin(int id) {

        Orders order1;
        String sql1 = "SELECT MAX(ID) as id,coustomerId,shipment,subtotal,vat,total,\n"
                + "                 payment_method,district,address,thana,postcode,contact,\n"
                + "                 status,date(date_time) as date,time(date_time) time FROM orders where coustomerId=" + id;
        order1 = (Orders) jdbctemplate.queryForObject(sql1, new BeanPropertyRowMapper(Orders.class));

        return order1;
    }

    @Override
    public boolean addOrders(Orders orders, int id, List<Cart> cartlist) {
        boolean successfullyInserted;
        String sql = "insert into orders(coustomerId,shipment,subtotal,vat,total,district,address,thana,postcode,status) values\n"
                + "(" + id + "," + orders.getShipment() + "," + orders.getSubtotal() + "," + orders.getVat() + "," + orders.getTotal() + ",'" + orders.getDistrict() + "','" + orders.getAddress() + "','" + orders.getThana() + "','" + orders.getPostcode() + "','Orderd');";
        jdbctemplate.update(sql);

        Orders order1 = getorderin(id);

        for (int i = 0; i < cartlist.size(); i++) {

            Cart cart = cartlist.get(i);

            System.out.println("everythine No :" + i + ",," + order1.getId() + "," + id + "," + cart.getProduct_id() + ",'" + cart.getProduct_name() + "','" + cart.getImage() + "','" + cart.getColor() + "','" + cart.getSize() + "','" + cart.getCategory() + "'," + cart.getQuntity() + "," + cart.getNew_price() + ",'" + cart.getCompany() + "'," + cart.getNew_price() * cart.getQuntity() + ",'" + order1.getStatus() + "'," + cart.getCost_price() + "," + cart.getCost_price() * cart.getQuntity());

            String sql2 = "insert into orderditais(order_id,coustomerId,product_id,product_name,image,color,size,category,quantity,new_price,company,subtotal,status,cost_price,total_costprice)  values ("
                    + order1.getId() + "," + id + "," + cart.getProduct_id() + ",'" + cart.getProduct_name() + "','" + cart.getImage() + "','" + cart.getColor() + "','" + cart.getSize() + "','" + cart.getCategory() + "'," + cart.getQuntity() + "," + cart.getNew_price() + ",'" + cart.getCompany() + "'," + cart.getNew_price() * cart.getQuntity() + ",'" + order1.getStatus() + "'," + cart.getCost_price() + "," + cart.getCost_price() * cart.getQuntity() + ");";

            jdbctemplate.update(sql2);

        }

        successfullyInserted = true;
        return successfullyInserted;

    }

    @Override
    public boolean deleteUserCart(int id) {
        boolean status;
        String deleteQuery = "delete from cart where coustomerId =" + id;
        jdbctemplate.update(deleteQuery);
        status = true;
        return status;
    }

    @Override
    public List<Orders> getOrderList(int id) {

        List<Orders> orderlist;
        String sql = " SELECT id,coustomerId,shipment,subtotal,vat,total,\n"
                + " payment_method,district,address,thana,postcode,contact,\n"
                + " status,date(date_time) as date,time(date_time) time FROM orders where coustomerId=" + id;
        orderlist = jdbctemplate.query(sql, new BeanPropertyRowMapper(Orders.class));
        return orderlist;
    }

    @Override
    public void setcolor(Integer id, String color) {
        String sql = "update cart set color='" + color + "' where id=" + id;
        jdbctemplate.update(sql);

    }

    @Override
    public void setSize(Integer id, String size) {

        String sql = "update cart set size='" + size + "' where id=" + id;
        jdbctemplate.update(sql);
    }

    @Override
    public void setSize(Integer id, Integer qua) {
        String sql = "update cart set quntity='" + qua + "' where id=" + id;
        jdbctemplate.update(sql);
    }

    @Override
    public List<Products> getFashionList() {
        List<Products> foodproducts;
        String sql = "select id,product_id,product_name,image,old_price,category,\n"
                + "new_price,quantity,company,description ,cost_price,stock_ditails,cash_memo,\n"
                + "	   date(date_time) as date,\n"
                + "	   time(date_time) time   from products where category=\"fashion\";";

        foodproducts = jdbctemplate.query(sql, new BeanPropertyRowMapper(Products.class));
        return foodproducts;
    }

    @Override
    public List<Products> getVehiclesList() {
        List<Products> foodproducts;
        String sql = "select id,product_id,product_name,image,old_price,category,\n"
                + "new_price,quantity,company,description ,cost_price,stock_ditails,cash_memo,\n"
                + "	   date(date_time) as date,\n"
                + "	   time(date_time) time   from products where category=\"vehicles\";";

        foodproducts = jdbctemplate.query(sql, new BeanPropertyRowMapper(Products.class));
        return foodproducts;
    }

    @Override
    public List<Products> getGarmentsList() {
        List<Products> foodproducts;

        String sql = "select id,product_id,product_name,image,old_price,category,\n"
                + "new_price,quantity,company,description ,cost_price,stock_ditails,cash_memo,\n"
                + "	   date(date_time) as date,\n"
                + "	   time(date_time) time   from products where category=\"garments\";";

        foodproducts = jdbctemplate.query(sql, new BeanPropertyRowMapper(Products.class));
        return foodproducts;

    }

    @Override
    public List<Products> getAllProductlist() {
        List<Products> foodproducts;

        String sql = "select id,product_id,product_name,image,old_price,category,\n"
                + "new_price,quantity,company,description ,cost_price,stock_ditails,cash_memo,\n"
                + "	   date(date_time) as date,\n"
                + "	   time(date_time) time   from products;";

        foodproducts = jdbctemplate.query(sql, new BeanPropertyRowMapper(Products.class));
        return foodproducts;
    }

    @Override
    public List<Products> getProductsByPage(int pageid, int total) {
        List<Products> foodproducts;

        String sql = "select id,product_id,product_name,image,old_price,category,\n"
                + "new_price,quantity,company,description ,cost_price,stock_ditails,cash_memo,\n"
                + "	   date(date_time) as date,\n"
                + "	   time(date_time) time   from products limit " + (pageid - 1) + "," + total;

        foodproducts = jdbctemplate.query(sql, new BeanPropertyRowMapper(Products.class));
        return foodproducts;
    }

    @Override
    public List<Products> getProductsBySearchlist(String name, int pageid, int total) {

        List<Products> foodproducts;
        String sql = "select id,product_id,product_name,image,old_price,category,\n"
                + "new_price,quantity,company,description ,cost_price,stock_ditails,cash_memo,\n"
                + "	   date(date_time) as date,\n"
                + "	   time(date_time) time   from products WHERE product_name LIKE '%" + name + "s%' or category Like '%" + name + "%' or image Like '%" + name + "%' or company Like '%" + name + "%' limit " + (pageid - 1) + "," + total;

        foodproducts = jdbctemplate.query(sql, new BeanPropertyRowMapper(Products.class));
        return foodproducts;

    }

    @Override
    public List<Products> getProductsByCategory(String category) {
        List<Products> foodproducts;
        String sql = "select id,product_id,product_name,image,old_price,category,\n"
                + "new_price,quantity,company,description ,cost_price,stock_ditails,cash_memo,\n"
                + "	   date(date_time) as date,\n"
                + "	   time(date_time) time   from products WHERE product_name LIKE '%" + category + "s%' or category Like '%" + category + "%' or image Like '%" + category + "%' or company Like '%" + category + "%'";

        foodproducts = jdbctemplate.query(sql, new BeanPropertyRowMapper(Products.class));
        return foodproducts;
    }

}
