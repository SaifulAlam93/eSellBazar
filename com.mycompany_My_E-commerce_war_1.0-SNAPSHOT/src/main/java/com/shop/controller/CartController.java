/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.controller;

import com.shop.model.Cart;
import com.shop.model.Products;
import com.shop.model.Users;
import com.shop.service.Service;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Saiful
 */
@org.springframework.stereotype.Controller
@RequestMapping("/cart")
public class CartController {
    
     @Autowired
    Service service;

      public static int id = 3;
    Users user=service.getUserbyId(id);
    
    @RequestMapping("/deleteCart")
    public String deleteFormCart(ModelMap modelmape, HttpServletRequest rq) {

        String id2 = rq.getParameter("id");
        int id3 = Integer.parseInt(id2);
  

        boolean stuse = service.deleteCart(id3);
        List<Cart> cartlist = service.getCartList(user.getId());

       
        modelmape.addAttribute("cartlist", cartlist);

        return "shopping-cart";
    }

    @RequestMapping("/shop")
    public String goshop(@RequestParam String category,ModelMap modelmap) {
        
         List<Products> list = service.getProductsByCategory(category);
        
        modelmap.addAttribute("plist", list);
        
        return "shop";
    }

    @RequestMapping("/shopping-cart")
    public String goshoppingCart(ModelMap modelmap) {

        List<Cart> cartlist = service.getCartList(user.getId());

        System.out.println(cartlist.size());

        modelmap.addAttribute("cartlist", cartlist);

        return "shopping-cart";
    }

     
    
}
