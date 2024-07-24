package com.outsidethebox.project.services;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.outsidethebox.project.models.Category;
import com.outsidethebox.project.models.Post;
import com.outsidethebox.project.repositories.PostRepository;

@Service
public class PostService {

	@Autowired
	private PostRepository postRepository;

	@Autowired
	private ReviewService reviewService;

	public List<Post> findAll() {
		return postRepository.findAll();
	}

	public Post findById(Long id) {
		return postRepository.findById(id).orElse(null);
	}

	public List<Post> findByTitleOrDescriptionContaining(String search) {
		return postRepository.findByTitleOrDescriptionContaining(search);
	}

	public List<Post> findByCategory(Category category) {
		return postRepository.findByCategory(category);
	}

	public List<Post> findByCategorySortByCreationDate(Category category) {
		return postRepository.findByCategoryOrderByCreatedAtDesc(category);
	}

	public List<Post> findByCategoryAndSearchTerm(Category category, String searchTerm) {
		return postRepository.findByCategoryAndTitleOrDescriptionContainingIgnoreCase(category, searchTerm);
	}

	public List<Post> findPostsExcludingSpecificCategories() {
		List<Category> excludedCategories = Arrays.asList(Category.Fletero, Category.Jardinero, Category.Electricista,
				Category.Gasista, Category.Plomero, Category.Carpintero);

		return postRepository.findPostsExcludingCategories(excludedCategories);
	}

	public List<Post> findPostsExcludingCategoriesAndSearch(String search) {
		List<Category> excludedCategories = Arrays.asList(Category.Fletero, Category.Jardinero, Category.Electricista,
				Category.Gasista, Category.Plomero, Category.Carpintero);

		return postRepository.findPostsExcludingCategoriesAndSearch(excludedCategories, search);
	}

	public boolean isDuplicateTitle(String title) {
		List<Post> existingPosts = postRepository.findByTitle(title);
		return !existingPosts.isEmpty();
	}

	public Post save(Post post) {
		return postRepository.save(post);
	}

	public void deleteById(Long id) {
		postRepository.deleteById(id);
	}

	public Map<Long, Integer> calculateAverageRatingByPosts(List<Post> posts) {
		Map<Long, Integer> postRatings = new HashMap<>();
		for (Post post : posts) {
			Double averageRating = reviewService.calculateAverageRatingByPost(post.getId());
			if (averageRating == null) {
				postRatings.put(post.getId(), 0);
			} else {
				postRatings.put(post.getId(), (int) Math.round(averageRating));
			}
		}
		return postRatings;
	}

	public Integer calculateAverageRatingByPost(Post post) {
		Double averageRating = reviewService.calculateAverageRatingByPost(post.getId());
		return averageRating != null ? (int) Math.floor(averageRating) : 0;
	}

}
