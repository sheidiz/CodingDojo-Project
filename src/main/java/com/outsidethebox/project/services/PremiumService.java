package com.outsidethebox.project.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.outsidethebox.project.models.Premium;
import com.outsidethebox.project.repositories.PremiumRepository;

@Service
public class PremiumService {
	@Autowired
	private PremiumRepository PremRep;
	
	public Premium savePremium(Premium newPremium){
		return PremRep.save(newPremium);
	}
	
	public List<Premium> findPremium(){
		return PremRep.findAll();
	}
	
	public Premium findByName(String name){
		return PremRep.findByName(name).orElse(null);
	}
	
	public Premium findPremium(Long id) {
		return PremRep.findById(id).orElse(null);
	}
	
	public void deleteCoupon(Long id) {
		PremRep.deleteById(id);
	}
}
