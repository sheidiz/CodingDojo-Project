package com.outsidethebox.project.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.outsidethebox.project.models.Order;
import com.outsidethebox.project.models.User;

@Repository
public interface OrderRepository extends CrudRepository<Order, Long> {

	List<Order> findAll();

	List<Order> findByPostOrderSupplierAndStatusOrderOrderByCreatedAtDesc(User supplier, String statusOrder);
	
	@Query("SELECT o FROM Order o WHERE o.client.id = :clientId AND o.id NOT IN (SELECT r.post.id FROM Review r WHERE r.client.id = :clientId)")
    List<Order> findOrdersWithoutReviewByClientId(@Param("clientId") Long clientId);
	
	@Query("SELECT o FROM Order o WHERE o.client.id = :clientId AND o.statusOrder = :statusOrder ORDER BY o.createdAt DESC")
    List<Order> findOrdersByClientAndStatusOrder(@Param("clientId") Long clientId, @Param("statusOrder") String statusOrder);

}
