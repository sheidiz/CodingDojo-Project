package com.outsidethebox.project.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.outsidethebox.project.models.Post;
import com.outsidethebox.project.models.Category;
import com.outsidethebox.project.repositories.PostRepository;

@Service
public class PostService {

    @Autowired
    private PostRepository postRepository;

    public List<Post> findAll() {
        return postRepository.findAll();
    }

    public Post findById(Long id) {
        return postRepository.findById(id).orElse(null);
    }

    public List<Post> findByCategory(Category category) {
        return postRepository.findByCategory(category);
    }

    public Post save(Post post, BindingResult result) {
        // Validación adicional para verificar títulos duplicados
        String title = post.getTitle();
        List<Post> existingPosts = postRepository.findByTitle(title);
        if (!existingPosts.isEmpty() && existingPosts.stream().anyMatch(p -> !p.getId().equals(post.getId()))) {
            result.rejectValue("title", "Duplicate", "El título ya existe.");
        }
        if (result.hasErrors()) {
            return null;
        } else {
            return postRepository.save(post);
        }
    }

    public void deleteById(Long id) {
        postRepository.deleteById(id);
    }
}
