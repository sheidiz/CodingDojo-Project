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
    public List<Order> getOrdersWithoutReview(Long clientId) {
        return orderRepository.findOrdersWithoutReviewByClientId(clientId);
    }
    public List<Order> getOrdersByClientAndStatus(Long clientId, String statusOrder) {
        return orderRepository.findOrdersByClientAndStatusOrder(clientId, statusOrder);
    }
    
    public void completeOrder(Long orderId) {
        Order order = findById(orderId);
        if (order != null) {
            order.setStatusOrder("1");  // Asegúrate de que el estado "1" signifique "Completada" en tu sistema
            orderRepository.save(order);
            System.out.println("Order status updated to completed for orderId: " + orderId);
        } else {
            System.out.println("Order not found for orderId: " + orderId);
        }
    }
}    
    
    

