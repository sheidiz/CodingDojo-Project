package com.outsidethebox.project.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.outsidethebox.project.models.Category;
import com.outsidethebox.project.models.Post;

@Repository
public interface PostRepository extends CrudRepository<Post, Long> {

	List<Post> findAll();

	List<Post> findByTitle(String title);

	List<Post> findByTitleContains(String keyword);

	Optional<Post> findById(Long id);

	List<Post> findByCategory(Category category);

	List<Post> findByCategoryOrderByCreatedAtDesc(Category category);

	@Query("SELECT p FROM Post p WHERE p.title LIKE %:search% OR p.description LIKE %:search%")
	List<Post> findByTitleOrDescriptionContaining(@Param("search") String search);

	@Query("SELECT p FROM Post p WHERE p.category = :category AND (LOWER(p.title) LIKE LOWER(CONCAT('%', :searchTerm, '%')) OR LOWER(p.description) LIKE LOWER(CONCAT('%', :searchTerm, '%')))")
	List<Post> findByCategoryAndTitleOrDescriptionContainingIgnoreCase(@Param("category") Category category,
			@Param("searchTerm") String searchTerm);

	@Query("SELECT p FROM Post p WHERE p.category NOT IN :excludedCategories")
	List<Post> findPostsExcludingCategories(@Param("excludedCategories") List<Category> excludedCategories);

	@Query("SELECT p FROM Post p WHERE p.category NOT IN :excludedCategories "
			+ "AND (LOWER(p.title) LIKE LOWER(CONCAT('%', :search, '%')) "
			+ "OR LOWER(p.description) LIKE LOWER(CONCAT('%', :search, '%')))")
	List<Post> findPostsExcludingCategoriesAndSearch(@Param("excludedCategories") List<Category> excludedCategories,
			@Param("search") String search);

}
