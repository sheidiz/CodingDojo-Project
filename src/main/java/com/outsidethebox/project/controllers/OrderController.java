package com.outsidethebox.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.outsidethebox.project.models.Order;
import com.outsidethebox.project.models.Post;
import com.outsidethebox.project.models.Review;
import com.outsidethebox.project.models.User;
import com.outsidethebox.project.services.OrderService;
import com.outsidethebox.project.services.PostService;
import com.outsidethebox.project.services.ReviewService;
import com.outsidethebox.project.services.UserService;
import com.outsidethebox.project.utils.ModelUtils;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class OrderController {

	@Autowired
	private OrderService os;

	@Autowired
	private PostService ps;

	@Autowired
	private UserService us;

	@Autowired
	private ReviewService rs;

	// create order jsp +
	@GetMapping("/servicios/{categoria}/{id}")
	public String publication(@PathVariable("categoria") String categoria, @PathVariable("id") Long id,
			HttpSession session, Model model, @ModelAttribute("order") Order order) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		User user = us.findById(userTemp.getId());
		Post post = ps.findById(id);
		Integer averageRating = ps.calculateAverageRatingByPost(post);
		ModelUtils.setupModel(user, model, post.getTitle(), "/private/publicacion.jsp");
		model.addAttribute("post", post);
		model.addAttribute("rating", "Puntuacion" + averageRating);

		return "index.jsp";
	}

	@PostMapping("/servicios/order/crear")
	public String orderCreate(@Valid @ModelAttribute("order") Order order, BindingResult result, HttpSession session,
			Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/";
		}

		User user = us.findById(userTemp.getId());
		Post post = ps.findById(order.getPostOrder().getId());
		if (result.hasErrors()) {
			Integer averageRating = ps.calculateAverageRatingByPost(post);
			ModelUtils.setupModel(user, model, post.getTitle(), "/private/publicacion.jsp");
			model.addAttribute("post", post);
			model.addAttribute("rating", "Puntuacion" + averageRating);
			return "index.jsp";
		}
		order.setPostOrder(post);
		order.setClient(user);

		os.save(order);

		return "redirect:/";

	}

	@GetMapping("/ordenes/{orderId}")
	public String orderDetails(@PathVariable("orderId") Long orderId, HttpSession session, Model model,
			@ModelAttribute("review") Review review) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		Order order = os.findById(orderId);
		User usuario = order.getClient();
		
		if (order == null || usuario.getId() != userTemp.getId()) {
			return "redirect:/";
		}
		
		
		model.addAttribute("order", order);
		model.addAttribute("post", order.getPostOrder());
		
		if (order.getStatusOrder().contains("0")) {
			ModelUtils.setupModel(userTemp, model, order.getPostOrder().getTitle(), "/private/orden.jsp");
		} else {
			ModelUtils.setupModel(userTemp, model, order.getPostOrder().getTitle(), "/private/review.jsp");
		}
		

		return "index.jsp";
	}

	@PostMapping("/ordenes/{orderId}/{orderPostOrderId}")
	public String enviarReview(@PathVariable("orderId") Long orderId,
			@PathVariable("orderPostOrderId") Long postOrderId, HttpSession session,
			@Valid @ModelAttribute("review") Review review, BindingResult result ,Model model) {

		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		Order order = os.findById(orderId);
		User usuario = order.getClient();
		
		if (order == null || usuario.getId() != userTemp.getId()) {
			return "redirect:/";
		}

		model.addAttribute("order", order);
		model.addAttribute("post", order.getPostOrder());
		
		if(result.hasErrors()) {
			ModelUtils.setupModel(userTemp, model, order.getPostOrder().getTitle(), "/private/review.jsp");
			return "index.jsp";
		}
		
		rs.saveReview(review);
		return "redirect:/";
	}

}
