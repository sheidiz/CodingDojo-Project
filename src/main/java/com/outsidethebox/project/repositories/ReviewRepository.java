package com.outsidethebox.project.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.outsidethebox.project.models.Review;
import com.outsidethebox.project.models.User;

@Repository
public interface ReviewRepository extends CrudRepository<Review, Long> {

	List<Review> findByPostId(Long postId);

	List<Review> findByClientId(Long clientId);

	@Query("SELECT r FROM Review r WHERE r.post.supplier = :supplier")
	List<Review> findBySupplier(@Param("supplier") User supplier);

	@Query("SELECT AVG(r.rating) FROM Review r WHERE r.post.id = :postId")
	Double findAverageRatingByPostId(@Param("postId") Long postId);

}
