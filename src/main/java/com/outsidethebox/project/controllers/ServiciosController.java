package com.outsidethebox.project.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ServiciosController {

	String usuarioProvisorio = "";

	@GetMapping("/servicios")
	public String servicios(Model model) {
		return "redirect:/servicios/mudanzas";
	}

	@GetMapping("/servicios/mudanzas")
	public String serviciosMudanzas(Model model) {
		setupModel(model, "Mudanzas", "Mudanzas");

		return "index.jsp";
	}

	@GetMapping("/servicios/jardineria")
	public String serviciosJardineria(Model model) {
		setupModel(model, "Jardinería", "Jardineria");

		return "index.jsp";
	}

	@GetMapping("/servicios/electricistas")
	public String serviciosElectricistas(Model model) {
		setupModel(model, "Electricistas", "Electricistas");

		return "index.jsp";
	}

	@GetMapping("/servicios/pintores")
	public String serviciosPintores(Model model) {
		setupModel(model, "Pintores", "Pintores");

		return "index.jsp";
	}

	@GetMapping("/servicios/reparaciones")
	public String serviciosReparaciones(Model model) {
		setupModel(model, "Reparaciones", "Reparaciones");

		return "index.jsp";
	}

	@GetMapping("/servicios/limpieza")
	public String serviciosLimpieza(Model model) {
		setupModel(model, "Limpieza", "Limpieza");

		return "index.jsp";
	}

	private void setupModel(Model model, String pageTitle, String category) {
		model.addAttribute("userInSession", usuarioProvisorio);
		model.addAttribute("pageTitle", pageTitle);
		model.addAttribute("category", category);
		model.addAttribute("content", "/WEB-INF/private/categoria.jsp");
	}
}
