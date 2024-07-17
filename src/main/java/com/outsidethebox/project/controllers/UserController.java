package com.outsidethebox.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.outsidethebox.project.models.User;
import com.outsidethebox.project.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class UserController {
	@Autowired
	private UserService serv;
	
	String usuarioProvisorio = "";
	
	
	@GetMapping("/registro")
	public String signup(Model model, @ModelAttribute("newUser") User newUser, HttpSession session) {
		User userTemp = (User) session.getAttribute("userInSession");
		if(userTemp != null) {
			return "redirect:/";
		}
		return "public/registro.jsp"; 
	}
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser,
						   BindingResult result,
						   HttpSession session) {
		serv.register(newUser, result);
		
		if(result.hasErrors()) {
			return "public/registro.jsp"; 
		} else {
			session.setAttribute("userInSession", newUser);
			return "redirect:/";
		}
		
	}
	@PostMapping("/login")
	public String login(Model model, @RequestParam("email") String email,
			@RequestParam("password") String password,
			RedirectAttributes redirectAttributes,   
			HttpSession session) {
		
		User userTryingLogin = serv.login(email, password);
		
		if(userTryingLogin == null) {
		
			redirectAttributes.addFlashAttribute("errorLogin", "email/contraseña incorrectos");
			return "redirect:/iniciar-sesion";
		} else {
			session.setAttribute("userInSession", userTryingLogin);
			return "redirect:/";
		}
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userInSession");
		return "redirect:/";
	}
	
}
