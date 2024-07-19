package com.outsidethebox.project.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.outsidethebox.project.models.Premium;

@Repository
public interface PremiumRepository extends CrudRepository<Premium, Long> {
	
	List<Premium> findAll();
	
	Optional<Premium> findByName(String name);
	Optional<Premium> findById(Long id);
}
