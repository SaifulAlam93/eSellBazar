package com.shop.controller;

import com.shop.model.Cart;
import com.shop.model.Products;
import com.shop.model.Users;
import com.shop.service.Service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private Service service;

    public static int id = 3;
    Users user = service.getUserbyId(id);

    @Bean
    public MultipartResolver multipartResolver() {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setMaxUploadSize(10240000);
        return multipartResolver;
    }

    @RequestMapping(value = "/viewemp")
    public String edit(int pageid, Model modelmap) {

        int total = 12;
        String name = "viewemp";
        if (pageid == 1) {
        } else {
            pageid = (pageid - 1) * total + 1;
        }
        System.out.println(pageid);
        List<Products> list = service.getProductsByPage(pageid, total);

        modelmap.addAttribute("foodproductlist", list);
        modelmap.addAttribute("paramitar", name);
        return "index";
    }

    @RequestMapping(value = "/addajax")
    @ResponseBody
    public String addToCart_ajax(@RequestParam Integer id) {

        try {

            Products pro = service.geProductlist(id);
            Cart cart = new Cart();

            cart.setProduct_id(pro.getId());
            cart.setVendormail(pro.getVendormail());
            cart.setCoustomerId(user.getId());
            cart.setProduct_name(pro.getProduct_name());
            cart.setImage(pro.getImage());
            cart.setCategory(pro.getCategory());
            cart.setCompany(pro.getCompany());
            cart.setNew_price(pro.getNew_price());
            cart.setCost_price(pro.getCost_price());
            cart.setP_id(pro.getProduct_id());

            service.addCart(cart);

            return "massege:Product Successfully Added";
        } catch (Exception e) {
            System.out.println(e);
            return "massege: Something is rong.";
        }

    }

    @RequestMapping(value = "/setcolor")
    @ResponseBody
    public String setColor(@RequestParam Integer id, @RequestParam String color) {

        try {
            service.setcolor(id, color);

            return "massege: Success";
        } catch (Exception e) {
            e.printStackTrace(System.out);
            return "massege: Something is rong.";
        }

    }

    @RequestMapping(value = "/setsize")
    @ResponseBody
    public String setSize(@RequestParam Integer id, @RequestParam String size) {

        try {
            service.setSize(id, size);

            return "\"massege\": \"Success\"";
        } catch (Exception e) {
            e.printStackTrace(System.out);
            return "massege: Something is rong.";
        }

    }

    @RequestMapping(value = "/setqua")
    @ResponseBody
    public String setquntity(@RequestParam Integer id, @RequestParam Integer qua) {

        try {
            service.setQuantity(id, qua);

            return "massege: Success";
        } catch (Exception e) {
            e.printStackTrace(System.out);
            return "massege: Something is rong.";
        }

    }

    @RequestMapping("/productsListAngular")
    public String getProducts() {
        return "productListAngular";
    }

}
