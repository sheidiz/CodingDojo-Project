package com.outsidethebox.project.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.outsidethebox.project.models.Order;
import com.outsidethebox.project.models.User;
import com.outsidethebox.project.repositories.OrderRepository;

@Service
public class OrderService {
	@Autowired
    private OrderRepository orderRepository;

    public List<Order> findAll() {
        return orderRepository.findAll();
    }

    public Order findById(Long id) {
        return orderRepository.findById(id).orElse(null);
    }

    public Order save(Order order) {
        return orderRepository.save(order);
    }
    public List<Order> getOrdersBySupplierAndStatus(User supplier, String statusOrder) {
        return orderRepository.findByPostOrderSupplierAndStatusOrderOrderByCreatedAtDesc(supplier, statusOrder);
    }
}

