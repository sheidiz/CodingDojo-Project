package com.outsidethebox.project.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
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
}
