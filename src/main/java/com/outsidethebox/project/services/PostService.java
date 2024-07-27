package com.outsidethebox.project.services;

import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

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

	public List<Post> findByTitleOrDescriptionContaining(String search, String filter) {
		List<Post> posts = postRepository.findByTitleOrDescriptionContaining(search);

		if (filter != null) {
			switch (filter) {
			case "MasAntiguos":
				return posts;
			case "MasRecientes":
				posts = posts.stream().sorted(Comparator.comparing(Post::getCreatedAt).reversed())
						.collect(Collectors.toList());
				break;
			case "MejorCalificacion":
				Map<Long, Integer> postRatings = calculateAverageRatingByPosts(posts);
				posts = posts.stream().sorted(
						Comparator.comparing((Post post) -> postRatings.getOrDefault(post.getId(), 0)).reversed())
						.collect(Collectors.toList());
				break;
			default:
				break;
			}
		}

		return posts;
	}

	public List<Post> findByCategory(Category category) {
		return postRepository.findByCategory(category);
	}

	public List<Post> findPostsByCategoryAndFilter(Category category, String search, String filter) {
		List<Post> posts;
		if (search == null || search.trim().isEmpty()) {
			posts = postRepository.findByCategory(category);
		} else {
			posts = postRepository.findByCategoryAndTitleOrDescriptionContainingIgnoreCase(category, search);
		}

		if (filter != null) {
			switch (filter) {
			case "MasAntiguos":
				return posts;
			case "MasRecientes":
				posts = posts.stream().sorted(Comparator.comparing(Post::getCreatedAt).reversed())
						.collect(Collectors.toList());
				break;
			case "MejorCalificacion":
				Map<Long, Integer> postRatings = calculateAverageRatingByPosts(posts);
				posts = posts.stream().sorted(
						Comparator.comparing((Post post) -> postRatings.getOrDefault(post.getId(), 0)).reversed())
						.collect(Collectors.toList());
				break;
			default:
				break;
			}
		}

		return posts;
	}

	public List<Post> findPostsExcludingSpecificCategoriesAndFilter(String search, String filter) {
		List<Category> excludedCategories = Arrays.asList(Category.Fletero, Category.Jardinero, Category.Electricista,
				Category.Gasista, Category.Plomero, Category.Carpintero);

		List<Post> posts;
		if (search == null || search.trim().isEmpty()) {
			posts = postRepository.findPostsExcludingCategories(excludedCategories);
		} else {
			posts = postRepository.findPostsExcludingCategoriesAndSearch(excludedCategories, search);
		}

		if (filter != null) {
			switch (filter) {
			case "MasAntiguos":
				return posts;
			case "MasRecientes":
				posts = posts.stream().sorted(Comparator.comparing(Post::getCreatedAt).reversed())
						.collect(Collectors.toList());
				break;
			case "MejorCalificacion":
				Map<Long, Integer> postRatings = calculateAverageRatingByPosts(posts);
				posts = posts.stream().sorted(
						Comparator.comparing((Post post) -> postRatings.getOrDefault(post.getId(), 0)).reversed())
						.collect(Collectors.toList());
				break;
			default:
				break;
			}
		}

		return posts;
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

	public Set<Category> getDistinctCategoriesBySupplier(Long supplierId) {
		return postRepository.findDistinctCategoriesBySupplier(supplierId);
	}

}
