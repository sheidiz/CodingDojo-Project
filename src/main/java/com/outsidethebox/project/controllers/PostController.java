package com.outsidethebox.project.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.outsidethebox.project.models.Post;
import com.outsidethebox.project.services.PostService;

@Controller
@RequestMapping("/posts")
public class PostController {

    @Autowired
    private PostService postService;

    @GetMapping
    public String findAll(Model model) {
        List<Post> posts = postService.findAll();
        model.addAttribute("posts", posts);
        return "posts/list"; // Nombre de la vista que mostrará la lista de posts
    }

    @GetMapping("/{id}")
    public String findById(@PathVariable Long id, Model model) {
        Post post = postService.findById(id);
        if (post != null) {
            model.addAttribute("post", post);
            return "posts/detail"; // Nombre de la vista que mostrará el detalle del post
        } else {
            return "redirect:/posts"; // Redirigir a la lista de posts si no se encuentra el post
        }
    }

    @GetMapping("/new")
    public String createForm(Model model) {
        model.addAttribute("post", new Post());
        return "posts/form"; // Nombre de la vista del formulario de creación
    }

    @PostMapping
    public String save(@ModelAttribute("post") Post post, BindingResult result, Model model) {
        Post savedPost = postService.save(post, result);
        if (savedPost != null) {
            return "redirect:/posts"; // Redirigir a la lista de posts después de guardar
        } else {
            model.addAttribute("errors", result.getAllErrors());
            return "posts/form"; // Volver al formulario si hay errores
        }
    }

    @GetMapping("/{id}/edit")
    public String updateForm(@PathVariable Long id, Model model) {
        Post post = postService.findById(id);
        if (post != null) {
            model.addAttribute("post", post);
            return "posts/form"; // Nombre de la vista del formulario de edición
        } else {
            return "redirect:/posts"; // Redirigir a la lista de posts si no se encuentra el post
        }
    }

    @PostMapping("/{id}")
    public String update(@PathVariable Long id, @ModelAttribute("post") Post post, BindingResult result, Model model) {
        Post existingPost = postService.findById(id);
        if (existingPost != null) {
            post.setId(id);
            Post updatedPost = postService.save(post, result);
            if (updatedPost != null) {
                return "redirect:/posts"; // Redirigir a la lista de posts después de actualizar
            } else {
                model.addAttribute("errors", result.getAllErrors());
                return "posts/form"; // Volver al formulario si hay errores
            }
        } else {
            return "redirect:/posts"; // Redirigir a la lista de posts si no se encuentra el post
        }
    }

    @DeleteMapping("/{id}")
    public String delete(@PathVariable Long id) {
        postService.deleteById(id);
        return "redirect:/posts"; // Redirigir a la lista de posts después de eliminar
    }
}
