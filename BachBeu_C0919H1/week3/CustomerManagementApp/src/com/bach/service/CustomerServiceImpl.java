package com.bach.service;

import com.bach.model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService{
    public static Map<Integer, Customer> customers;

    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1, "Bach", "Bach@codegym.vn", "HaNoi"));
        customers.put(2, new Customer(2, "Bach", "Bach@codegym.vn", "HaTay"));
        customers.put(3, new Customer(3, "Bach", "Bach@codegym.vn", "HaiPhong"));
        customers.put(4, new Customer(4, "Bach", "Bach@codegym.vn", "HaNoi"));
        customers.put(5, new Customer(5, "Bach", "Bach@codegym.vn", "Hue"));
        customers.put(6, new Customer(6, "Bach", "Bach@codegym.vn", "HaNoi"));
    }
    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getCusId(), customer);
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id, customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }
}
