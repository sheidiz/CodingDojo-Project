package com.outsidethebox.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	/*
	 * @Autowired private UserService serv;
	 */

	// usuario provisorio hasta que este el login
	String usuarioProvisorio = "";

	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("userInSession", usuarioProvisorio);
		model.addAttribute("pageTitle", "Inicio");
		model.addAttribute("content", "/WEB-INF/public/inicio.jsp");
		return "index.jsp";
	}

	@GetMapping("/iniciar-sesion")
	public String login(Model model) {
		model.addAttribute("userInSession", usuarioProvisorio);
		return "public/inicio-sesion.jsp";
	}
<<<<<<< HEAD
	@GetMapping("/servicios")
	public String servicios(Model model) {
		model.addAttribute("userInSession", usuarioProvisorio);
		model.addAttribute("pageTitle", "Servicios");
		model.addAttribute("content", "/WEB-INF/servicios.jsp");
		return "index.jsp";
	}
=======

	@GetMapping("/registro")
	public String signup(Model model) {
		model.addAttribute("userInSession", usuarioProvisorio);
		return "public/registro.jsp";
	}

>>>>>>> branch 'dev' of https://github.com/sheidiz/CodingDojo-Project.git
	@GetMapping("/nosotros")
	public String nosotros(Model model) {
		model.addAttribute("userInSession", usuarioProvisorio);
		model.addAttribute("pageTitle", "Nosotros");
		model.addAttribute("content", "/WEB-INF/public/nosotros.jsp");
		return "index.jsp";
	}

	@GetMapping("/ayuda")
	public String ayuda(Model model) {
		model.addAttribute("userInSession", usuarioProvisorio);
		model.addAttribute("pageTitle", "Preguntas frecuentes");
		model.addAttribute("content", "/WEB-INF/public/faq.jsp");
		return "index.jsp";
	}

}
