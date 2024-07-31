package com.outsidethebox.project.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.outsidethebox.project.models.Coupon;

@Repository
public interface CouponRepository extends CrudRepository<Coupon, Long> {

	List<Coupon> findAll();
	
	Optional<Coupon> findByName(String name);
	Optional<Coupon> findById(Long id);
	
}
