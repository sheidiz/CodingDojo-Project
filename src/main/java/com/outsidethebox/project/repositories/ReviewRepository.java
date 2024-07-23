package com.outsidethebox.project.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.outsidethebox.project.models.Review;

@Repository
public interface ReviewRepository extends CrudRepository<Review, Long> {

	List<Review> findByPostId(Long postId);

	List<Review> findByClientId(Long clientId);
	
	 @Query("SELECT AVG(r.rating) FROM Review r WHERE r.post.id = :postId")
	 Double findAverageRatingByPostId(@Param("postId") Long postId);

}
