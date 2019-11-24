package com.bach.model;

import com.bach.service.CustomerService;
import com.bach.service.CustomerServiceImpl;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

public class CustomerController {
    private CustomerService customerService = new CustomerServiceImpl();

    @GetMapping("/")
    public String index(Model model){
        model.addAttribute("customers", customerService.findAll());
        return "index";
    }
}
