package com.outsidethebox.project.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

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

	@GetMapping("/servicios/mudanzas")
	public String serviceMudanzas(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		List<Post> posts = postService.findByCategory(Category.Fletero); // Assuming "Mudanzas" corresponds to "Fletero"
		ModelUtils.setupModelCategory(userTemp, model, "Mudanzas", "Mudanzas", posts);
		Map<Long, Integer> postRatings = postService.calculateAverageRatingByPosts(posts);
		model.addAttribute("postRatings", postRatings);

		return "index.jsp";
	}

	@GetMapping("/servicios/jardineria")
	public String serviceJardineria(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		List<Post> posts = postService.findByCategory(Category.Jardinero);
		ModelUtils.setupModelCategory(userTemp, model, "Jardinería", "Jardineros", posts);
		Map<Long, Integer> postRatings = postService.calculateAverageRatingByPosts(posts);
		model.addAttribute("postRatings", postRatings);

		return "index.jsp";
	}

	@GetMapping("/servicios/electricistas")
	public String serviceElectricistas(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		List<Post> posts = postService.findByCategory(Category.Electricista);
		ModelUtils.setupModelCategory(userTemp, model, "Electricistas", "Electricistas", posts);
		Map<Long, Integer> postRatings = postService.calculateAverageRatingByPosts(posts);
		model.addAttribute("postRatings", postRatings);

		return "index.jsp";
	}

	@GetMapping("/servicios/pintores")
	public String servicePintores(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		List<Post> posts = postService.findByCategory(Category.Pintor);
		ModelUtils.setupModelCategory(userTemp, model, "Pintores", "Pintores", posts);
		Map<Long, Integer> postRatings = postService.calculateAverageRatingByPosts(posts);
		model.addAttribute("postRatings", postRatings);

		return "index.jsp";
	}

	@GetMapping("/servicios/reparaciones")
	public String serviceReparaciones(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		List<Post> posts = postService.findByCategory(Category.Plomero); // Assuming "Reparaciones" // corresponds to "Plomero"
		ModelUtils.setupModelCategory(userTemp, model, "Reparaciones", "Reparaciones", posts);
		Map<Long, Integer> postRatings = postService.calculateAverageRatingByPosts(posts);
		model.addAttribute("postRatings", postRatings);

		return "index.jsp";
	}

	@GetMapping("/servicios/limpieza")
	public String serviceLimpieza(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}
		List<Post> posts = postService.findByCategory(Category.Otro);// Assuming "Limpieza" corresponds to "Otro"
		ModelUtils.setupModelCategory(userTemp, model, "Limpieza", "Limpieza", posts); 
		Map<Long, Integer> postRatings = postService.calculateAverageRatingByPosts(posts);
		model.addAttribute("postRatings", postRatings);

		return "index.jsp";
	}

	@GetMapping("/servicios/carpintero")
	public String serviceCarpintero(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		List<Post> posts = postService.findByCategory(Category.Carpintero);
		ModelUtils.setupModelCategory(userTemp, model, "Carpinteros", "Carpintero", posts);
		Map<Long, Integer> postRatings = postService.calculateAverageRatingByPosts(posts);
		model.addAttribute("postRatings", postRatings);

		return "index.jsp";
	}

	@GetMapping("/servicios/plomero")
	public String servicePlomero(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		List<Post> posts = postService.findByCategory(Category.Plomero);
		ModelUtils.setupModelCategory(userTemp, model, "Plomeros", "Plomero", posts);
		Map<Long, Integer> postRatings = postService.calculateAverageRatingByPosts(posts);
		model.addAttribute("postRatings", postRatings);

		return "index.jsp";
	}

	@GetMapping("/servicios/gasista")
	public String serviceGasista(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		List<Post> posts = postService.findByCategory(Category.Gasista);
		ModelUtils.setupModelCategory(userTemp, model, "Gasistas", "Gasista", posts);
		Map<Long, Integer> postRatings = postService.calculateAverageRatingByPosts(posts);
		model.addAttribute("postRatings", postRatings);

		return "index.jsp";
	}

	@GetMapping("/servicios/otro")
	public String serviceOtro(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		List<Post> posts = postService.findByCategory(Category.Otro);
		ModelUtils.setupModelCategory(userTemp, model, "Otros", "Otro", posts);
		Map<Long, Integer> postRatings = postService.calculateAverageRatingByPosts(posts);
		model.addAttribute("postRatings", postRatings);

		return "index.jsp";
	}

	// Additional methods from the second part
	@GetMapping("/servicios/{categoria}/{id}")
	public String publication(@PathVariable("categoria") String categoria, @PathVariable("id") Long id,
			HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}
		Post post = postService.findById(id);
		Integer averageRating = postService.calculateAverageRatingByPost(post);
		ModelUtils.setupModel(userTemp, model, post.getTitle(), "/private/publicacion.jsp");
		model.addAttribute("post", post);
		model.addAttribute("categoria", categoria);
		model.addAttribute("rating", "Puntuacion" + averageRating);

		return "index.jsp";
	}

	@GetMapping("/ordenes/id")
	public String review(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		ModelUtils.setupModel(userTemp, model, "Orden - Mudanzas - Flete Carlitos", "/private/review.jsp");

		return "index.jsp";
	}
}
