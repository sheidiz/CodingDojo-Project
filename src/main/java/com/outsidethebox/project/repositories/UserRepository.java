package com.outsidethebox.project.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.outsidethebox.project.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{	
	
	User findByEmail (String email);
}
