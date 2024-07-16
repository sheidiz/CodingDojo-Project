package com.outsidethebox.project.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.outsidethebox.project.models.Coupon;

@Repository
public interface CouponRepository extends CrudRepository<Coupon, Long> {

	List<Coupon> findAll();
	
	Coupon findByName(String name);
	
}
