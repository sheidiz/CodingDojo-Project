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
	public String serviciosMudanzas(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		ModelUtils.setupModelCategory(userTemp, model, "Mudanzas", "Mudanzas");

		return "index.jsp";
	}

	@GetMapping("/servicios/jardineria")
	public String serviciosJardineria(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		ModelUtils.setupModelCategory(userTemp, model, "Jardinería", "Jardineria");

		return "index.jsp";
	}

	@GetMapping("/servicios/electricistas")
	public String serviciosElectricistas(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		ModelUtils.setupModelCategory(userTemp, model, "Electricistas", "Electricistas");

		return "index.jsp";
	}

	@GetMapping("/servicios/pintores")
	public String serviciosPintores(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		ModelUtils.setupModelCategory(userTemp, model, "Pintores", "Pintores");

		return "index.jsp";
	}

	@GetMapping("/servicios/reparaciones")
	public String serviciosReparaciones(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}

		ModelUtils.setupModelCategory(userTemp, model, "Reparaciones", "Reparaciones");

		return "index.jsp";
	}

	@GetMapping("/servicios/limpieza")
	public String serviciosLimpieza(HttpSession session, Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/iniciar-sesion";
		}
		ModelUtils.setupModelCategory(userTemp, model, "Limpieza", "Limpieza");

		return "index.jsp";
	}

}
