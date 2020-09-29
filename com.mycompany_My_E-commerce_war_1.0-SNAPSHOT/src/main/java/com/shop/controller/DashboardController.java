/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.shop.model.Cart;
import com.shop.model.Emp;
import com.shop.model.MonthlySeal;
import com.shop.model.Orders;
import com.shop.model.Products;
import com.shop.model.UserMap;
import com.shop.model.Users;
import com.shop.model.Vendor;
import com.shop.service.DeshboardService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Saiful
 */
@org.springframework.stereotype.Controller
@RequestMapping("/desh")
public class DashboardController {

    @Autowired
    DeshboardService deshboardServiceImpl;

    @RequestMapping("/")
    public String welcome1(ModelMap modelmap) {
        return "dashboard/indexd";
    }

    
    
    Users user;

    public static int id = 1;

    
    @RequestMapping("/indexd")
    public String welcome(ModelMap modelmap) throws JsonProcessingException {

        user = deshboardServiceImpl.getUserditails(id);
        
        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();
        double totalsalse = deshboardServiceImpl.getlastWeektotal();
        double purchase = deshboardServiceImpl.getlastWeekpurchase();
        double totalorders = deshboardServiceImpl.getlastmonthOrders();
        int totalusers = deshboardServiceImpl.gettotalUsers();
        
        List<UserMap> district = deshboardServiceImpl.getusermap();
        List<MonthlySeal> monthdate = deshboardServiceImpl.getMonthdate();
        
        double earningLastWeek = totalsalse - purchase;

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("district", district);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
        modelmap.addAttribute("total", totalsalse);
        modelmap.addAttribute("earningLastWeek", earningLastWeek);
        modelmap.addAttribute("totalorders", totalorders);
        modelmap.addAttribute("totalusers", totalusers);
        
        ObjectMapper om = new ObjectMapper();
        modelmap.addAttribute("district2", om.writeValueAsString(district));
        modelmap.addAttribute("monthdate", om.writeValueAsString(monthdate));

        return "dashboard/indexd";
    }

    @RequestMapping("/charts-chartjs")
    public String go404(Cart cart, ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);

        return "dashboard/charts-chartjs";
    }

    @RequestMapping("/forms-basic-inputs")
    public String goblog(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);

        return "dashboard/forms-basic-inputs";
    }

    @RequestMapping("/forms-layouts")
    public String goblogMasonry(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
        return "dashboard/forms-layouts";
    }

    @RequestMapping("/icons-feather")
    public String gocheckout(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);

        return "dashboard/icons-feather";
    }

    @RequestMapping("/maps-google")
    public String gopriceTableOne(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
        return "dashboard/maps-google";
    }

    @RequestMapping("/pages-blank")
    public String gocontact(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
        
        return "dashboard/pages-blank";
    }

    @RequestMapping("/pages-invoice")
    public String gofooter1(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
        
        return "dashboard/pages-invoice";
    }

    @RequestMapping("/pages-profile")
    public String gofooter3(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);

        return "dashboard/pages-profile";
    }

    @RequestMapping("/pages-settings")
    public String gofooter2(ModelMap modelmap) throws Exception {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();
        List<Users> userlist = deshboardServiceImpl.getUserlist();
        List<Emp> employeeList = deshboardServiceImpl.getEmplist();
        List<Vendor> vendorList = deshboardServiceImpl.getVendorIlist();
        List<Products> productList = deshboardServiceImpl.getProductslist();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("vendorList", vendorList);
        modelmap.addAttribute("productList", productList);
        modelmap.addAttribute("userlist", userlist);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
        modelmap.addAttribute("emplist", employeeList);
        
        return "dashboard/pages-settings";
    }

    @RequestMapping("/tables-bootstrap")
    public String goindex2(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
        
        return "dashboard/tables-bootstrap";
    }

    @RequestMapping("/ui-alerts")
    public String goindex3(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
        return "dashboard/ui-alerts";
    }

    @RequestMapping("/ui-buttons")
    public String gopriceTableTwo(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
        return "dashboard/ui-buttons";
    }

    @RequestMapping("/ui-cards")
    public String goshop(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
        return "dashboard/ui-cards";
    }

    @RequestMapping("/ui-general")
    public String goshoppingCart(Cart cart, ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);

        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
           
        return "dashboard/ui-general";
    }

    @RequestMapping("/ui-grid")
    public String gosignin(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
        return "dashboard/ui-grid";
    }

    @RequestMapping("/ui-modals")
    public String gosignup(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
        
        return "dashboard/ui-modals";
    }

    @RequestMapping("/ui-typography")
    public String gosinglePostV2(ModelMap modelmap) {

        List<Orders> orderList = deshboardServiceImpl.getProductlist();
        int noty = orderList.size();

        modelmap.addAttribute("user", user);
        modelmap.addAttribute("orderList", orderList);
        modelmap.addAttribute("noty", noty);
        
        return "dashboard/ui-typography";
    }


}
