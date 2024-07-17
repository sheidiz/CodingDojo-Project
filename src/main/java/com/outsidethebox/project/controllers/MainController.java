package com.outsidethebox.project.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.outsidethebox.project.models.User;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {

	/*
	 * @Autowired private UserService serv;
	 */

	// usuario provisorio hasta que este el login
	String usuarioProvisorio = "";

	@GetMapping("/")
	public String index(Model model, HttpSession session) {
		User userTemp = (User) session.getAttribute("userInSession");
		model.addAttribute("pageTitle", "Inicio");
		model.addAttribute("content", "/WEB-INF/public/inicio.jsp");
		return "index.jsp";
	}

	@GetMapping("/iniciar-sesion")
	public String login(Model model, HttpSession session) {
		User userTemp = (User) session.getAttribute("userInSession");
		if(userTemp != null) {
			return "redirect:/";
		}
		return "public/inicio-sesion.jsp";
	}

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
