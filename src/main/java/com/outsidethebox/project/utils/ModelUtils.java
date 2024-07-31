package com.outsidethebox.project.utils;

import java.util.List;

import org.springframework.ui.Model;

import com.outsidethebox.project.models.Post;
import com.outsidethebox.project.models.User;

public class ModelUtils {

	public static void setupModel(User userInSession, Model model, String pageTitle, String content) {
		model.addAttribute("userInSession", userInSession);
		model.addAttribute("pageTitle", pageTitle);
		model.addAttribute("content", "/WEB-INF" + content);
	}

	public static void setupModelCategory(User userInSession, Model model, String pageTitle, String category) {
		model.addAttribute("userInSession", userInSession);
		model.addAttribute("pageTitle", pageTitle);
		model.addAttribute("category", category);
		model.addAttribute("content", "/WEB-INF/private/categoria.jsp");
	}
	public static void setupModelCategory(User userInSession, Model model, String pageTitle, String category, List<Post> posts) {
		model.addAttribute("userInSession", userInSession);
		model.addAttribute("pageTitle", pageTitle);
		model.addAttribute("category", category);
		model.addAttribute("content", "/WEB-INF/private/categoria.jsp");
		model.addAttribute("posts", posts);
	}

}
