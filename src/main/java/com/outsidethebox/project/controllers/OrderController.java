package com.outsidethebox.project.controllers;

import java.time.LocalDateTime;
import java.time.ZoneId;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.orm.jpa.JpaSystemException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		User supplier = order.getPostOrder().getSupplier();

		if (order == null || (usuario.getId() != userTemp.getId() && supplier.getId() != userTemp.getId())) {
			return "redirect:/";
		}
		User foundUser = us.findById(userTemp.getId());

		model.addAttribute("order", order);
		model.addAttribute("post", order.getPostOrder());

		if (order.getStatusOrder().contains("0") || userTemp.isSupplier()) {
			ModelUtils.setupModel(foundUser, model, order.getPostOrder().getTitle(), "/private/orden.jsp");
		} else {
			ModelUtils.setupModel(foundUser, model, order.getPostOrder().getTitle(), "/private/review.jsp");
		}

		return "index.jsp";
	}

	@PostMapping("/ordenes/{orderId}/{orderPostOrderId}")
	public String enviarReview(@PathVariable("orderId") Long orderId,
			@PathVariable("orderPostOrderId") Long postOrderId, HttpSession session,
			@Valid @ModelAttribute("review") Review review, BindingResult result, Model model) {

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

		if (result.hasErrors()) {
			ModelUtils.setupModel(userTemp, model, order.getPostOrder().getTitle(), "/private/review.jsp");
			return "index.jsp";
		}

		rs.saveReview(review);
		return "redirect:/perfil";
	}

	@PostMapping("/completeOrder")
	public String completeOrder(@RequestParam("orderId") Long orderId, HttpSession session,
			RedirectAttributes redirectAttributes) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		Order order = os.findById(orderId);
		if (order == null) {
			redirectAttributes.addFlashAttribute("error", "Order not found.");
			return "redirect:/perfil";
		}

		if (!order.getPostOrder().getSupplier().getId().equals(userTemp.getId())) {
			redirectAttributes.addFlashAttribute("error", "Order does not belong to the logged-in supplier.");
			return "redirect:/perfil";
		}

		// Para probar con una fecha fija, puedes definirla aquí
		LocalDateTime fixedNow = LocalDateTime.now();
		LocalDateTime estimatedDate = order.getEstimatedDate().toInstant().atZone(ZoneId.systemDefault())
				.toLocalDateTime();

		System.out.println("Fecha actual: " + fixedNow);
		System.out.println("Fecha estimada: " + estimatedDate);

		try {
			os.completeOrder(orderId);
			redirectAttributes.addFlashAttribute("success", "Order completed successfully.");
		} catch (DataIntegrityViolationException e) {
			redirectAttributes.addFlashAttribute("error", "Data integrity issue.");
			System.out.println("DataIntegrityViolationException: " + e.getMessage());
			e.printStackTrace();
		} catch (JpaSystemException e) {
			redirectAttributes.addFlashAttribute("error", "JPA system exception occurred.");
			System.out.println("JpaSystemException: " + e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "An unexpected error occurred while completing the order.");
			System.out.println("Exception: " + e.getMessage());
			e.printStackTrace();
		}
		
		return "redirect:/perfil";
	}

}
