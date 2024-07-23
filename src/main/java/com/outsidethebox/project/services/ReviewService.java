package com.outsidethebox.project.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.outsidethebox.project.models.Review;
import com.outsidethebox.project.repositories.ReviewRepository;

@Service
public class ReviewService {

	@Autowired
	private ReviewRepository reviewRepository;

	public Review saveReview(Review newReview) {
		return reviewRepository.save(newReview);
	}

	public List<Review> getReviewsByPost(Long postId) {
		return reviewRepository.findByPostId(postId);
	}

	public List<Review> getReviewsByClient(Long clientId) {
		return reviewRepository.findByClientId(clientId);
	}

	public void deleteReview(Long id) {
		reviewRepository.deleteById(id);
	}

	public Double calculateAverageRatingByPost(Long postId) {
		return reviewRepository.findAverageRatingByPostId(postId);
	}
}
