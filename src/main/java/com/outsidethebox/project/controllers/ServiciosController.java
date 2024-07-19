package com.outsidethebox.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.outsidethebox.project.models.User;
import com.outsidethebox.project.services.UserService;
import com.outsidethebox.project.utils.ModelUtils;

import jakarta.servlet.http.HttpSession;

@Controller
public class ServiciosController {

	@Autowired
	private UserService serv;

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

		ModelUtils.setupModelCategory(userTemp, model, "Mudanzas", "Mudanzas");

		return "index.jsp";
	}

	@GetMapping("/servicios/jardineria")
	public String serviceJardineria(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		ModelUtils.setupModelCategory(userTemp, model, "Jardinería", "Jardineria");

		return "index.jsp";
	}

	@GetMapping("/servicios/electricistas")
	public String serviceElectricistas(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		ModelUtils.setupModelCategory(userTemp, model, "Electricistas", "Electricistas");

		return "index.jsp";
	}

	@GetMapping("/servicios/pintores")
	public String servicePintores(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		ModelUtils.setupModelCategory(userTemp, model, "Pintores", "Pintores");

		return "index.jsp";
	}

	@GetMapping("/servicios/reparaciones")
	public String serviceReparaciones(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		ModelUtils.setupModelCategory(userTemp, model, "Reparaciones", "Reparaciones");

		return "index.jsp";
	}

	@GetMapping("/servicios/limpieza")
	public String serviceLimpieza(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}
		ModelUtils.setupModelCategory(userTemp, model, "Limpieza", "Limpieza");

		return "index.jsp";
	}

	@GetMapping("/servicios/categoria/id")
	public String publication(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		ModelUtils.setupModel(userTemp, model, "Categoria - Flete Carlitos", "/private/publicacion.jsp");

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
