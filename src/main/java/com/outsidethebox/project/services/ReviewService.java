package com.outsidethebox.project.services;

import java.util.List;
import java.util.OptionalDouble;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.outsidethebox.project.models.Review;
import com.outsidethebox.project.models.User;
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

	public List<Review> getReviewsBySupplier(User supplier) {
		return reviewRepository.findBySupplier(supplier);
	}

	public int getAverageRating(List<Review> reviews) {
		if (reviews == null || reviews.isEmpty()) {
			return 0;
		}

		OptionalDouble average = reviews.stream().mapToInt(Review::getRating).average();

		return average.isPresent() ? (int) Math.round(average.getAsDouble()) : 0;
	}

	public void deleteReview(Long id) {
		reviewRepository.deleteById(id);
	}

	public Double calculateAverageRatingByPost(Long postId) {
		return reviewRepository.findAverageRatingByPostId(postId);
	}
}
