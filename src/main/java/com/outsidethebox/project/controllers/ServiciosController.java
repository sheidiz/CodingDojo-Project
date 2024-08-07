package com.outsidethebox.project.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.outsidethebox.project.models.Category;
import com.outsidethebox.project.models.Post;
import com.outsidethebox.project.models.User;
import com.outsidethebox.project.services.PostService;
import com.outsidethebox.project.services.UserService;
import com.outsidethebox.project.utils.ModelUtils;

import jakarta.servlet.http.HttpSession;

@Controller
public class ServiciosController {

	@Autowired
	private UserService userService;

	@Autowired
	private PostService postService;

	@GetMapping("/servicios")
	public String servicios(Model model) {
		return "redirect:/servicios/mudanzas";
	}

	@GetMapping("/servicios/Busqueda")
	public String servicios(HttpSession session, Model model,
			@RequestParam(value = "search", required = false) String search,
			@RequestParam(value = "filter", required = false) String filter) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		if (search == null || search.isEmpty() || search.trim().length() == 0) {
			return "redirect:/";
		}

		List<Post> posts = postService.findByTitleOrDescriptionContaining(search, filter);
		model.addAttribute("search", search);
		model.addAttribute("filter", filter);
		
		ModelUtils.setupModelCategory(userTemp, model, search, "Busqueda", posts);
		Map<Long, Integer> postRatings = postService.calculateAverageRatingByPosts(posts);
		model.addAttribute("postRatings", postRatings);

		return "index.jsp";
	}

	@GetMapping("/servicios/Fleteros")
	public String serviceFleteros(HttpSession session, Model model,
			@RequestParam(value = "search", required = false) String search,
			@RequestParam(value = "filter", required = false) String filter) {
		return handleService(session, model, "Fletes", Category.Fletero, search, filter);
	}

	@GetMapping("/servicios/Jardineros")
	public String serviceJardineros(HttpSession session, Model model,
			@RequestParam(value = "search", required = false) String search,
			@RequestParam(value = "filter", required = false) String filter) {
		return handleService(session, model, "Jardinería", Category.Jardinero, search, filter);
	}

	@GetMapping("/servicios/Electricistas")
	public String serviceElectricistas(HttpSession session, Model model,
			@RequestParam(value = "search", required = false) String search,
			@RequestParam(value = "filter", required = false) String filter) {
		return handleService(session, model, "Electricistas", Category.Electricista, search, filter);
	}

	@GetMapping("/servicios/Gasistas")
	public String serviceGasistas(HttpSession session, Model model,
			@RequestParam(value = "search", required = false) String search,
			@RequestParam(value = "filter", required = false) String filter) {
		return handleService(session, model, "Gasistas", Category.Gasista, search, filter);
	}

	@GetMapping("/servicios/Plomeros")
	public String servicePlomeros(HttpSession session, Model model,
			@RequestParam(value = "search", required = false) String search,
			@RequestParam(value = "filter", required = false) String filter) {
		return handleService(session, model, "Plomeros", Category.Plomero, search, filter);
	}

	@GetMapping("/servicios/Carpinteros")
	public String serviceCarpinteros(HttpSession session, Model model,
			@RequestParam(value = "search", required = false) String search,
			@RequestParam(value = "filter", required = false) String filter) {
		return handleService(session, model, "Carpinteros", Category.Carpintero, search, filter);
	}

	@GetMapping("/servicios/Otros")
	public String serviceOtro(HttpSession session, Model model,
			@RequestParam(value = "search", required = false) String search,
			@RequestParam(value = "filter", required = false) String filter) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		List<Post> posts = postService.findPostsExcludingSpecificCategoriesAndFilter(search, filter);
		model.addAttribute("search", search);
		
		ModelUtils.setupModelCategory(userTemp, model, "Otros", "Otros", posts);
		Map<Long, Integer> postRatings = postService.calculateAverageRatingByPosts(posts);
		model.addAttribute("postRatings", postRatings);

		return "index.jsp";
	}

	private String handleService(HttpSession session, Model model, String imageTitle, Category category, String search,
			String filter) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		List<Post> posts = postService.findPostsByCategoryAndFilter(category, search, filter);
		model.addAttribute("search", search);
		model.addAttribute("filter", filter);

		ModelUtils.setupModelCategory(userTemp, model, imageTitle, category.toString() + "s", posts);
		Map<Long, Integer> postRatings = postService.calculateAverageRatingByPosts(posts);
		model.addAttribute("postRatings", postRatings);

		return "index.jsp";
	}
}
