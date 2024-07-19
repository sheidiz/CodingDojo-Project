package com.outsidethebox.project.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.outsidethebox.project.models.Order;

@Repository
public interface OrderRepository extends CrudRepository<Order, Long> {
	
	List<Order> findAll();
}