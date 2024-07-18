package com.outsidethebox.project.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.outsidethebox.project.models.Coupon;
import com.outsidethebox.project.repositories.CouponRepository;

@Service
public class CouponService {
	
	@Autowired
	private CouponRepository cr;
	
	public Coupon saveCoupon(Coupon newCoupon){
		return cr.save(newCoupon);
	}
	
	public List<Coupon> findCoupons(){
		return cr.findAll();
	}
	
	public Coupon findByName(String name){
		return cr.findByName(name).orElse(null);
	}
	
	public Coupon findCoupon(Long id) {
		return cr.findById(id).orElse(null);
	}
	
	public void deleteCoupon(Long id) {
		cr.deleteById(id);
	}
}