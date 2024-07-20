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

	@GetMapping("/registro")
	public String signup(Model model, @ModelAttribute("newUser") User newUser, HttpSession session) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp != null) {
			return "redirect:/";
		}
		model.addAttribute("supplier", false);
		return "public/registro.jsp";
	}
	
	@GetMapping("/registro_laburante")
	public String signupSupplier(Model model, @ModelAttribute("newUser") User newUser, HttpSession session) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp != null) {
			return "redirect:/";
		}
		model.addAttribute("supplier", true);
		return "public/registro_laburante.jsp";
	}
	
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, 
	                       BindingResult result, 
	                       HttpSession session, 
	                       @ModelAttribute("supplier") boolean supplier, 
	                       Model model) {

	    // Si hay errores de validación, vuelve a mostrar el formulario adecuado
	    if (result.hasErrors()) {
	        if (supplier) {
	            model.addAttribute("supplier", true);
	            return "public/registro_laburante.jsp";
	        } else {
	            model.addAttribute("supplier", false);
	            return "public/registro.jsp";
	        }
	    }

	    // Registro del usuario
	    serv.register(newUser, result);
	    session.setAttribute("userInSession", newUser);
	    return "redirect:/";
	}

	@GetMapping("/iniciar-sesion")
	public String login(Model model, HttpSession session) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp != null) {
			return "redirect:/";
		}
		return "public/inicio-sesion.jsp";
	}

	@PostMapping("/login")
	public String login(Model model, @RequestParam("email") String email, @RequestParam("password") String password,
			RedirectAttributes redirectAttributes, HttpSession session) {

		User userTryingLogin = serv.login(email, password);

		if (userTryingLogin == null) {
			redirectAttributes.addFlashAttribute("errorLogin", "Email y/o contraseña incorrectos");
			return "redirect:/iniciar-sesion";
		}
		
		session.setAttribute("userInSession", userTryingLogin);
		return "redirect:/";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userInSession");
		return "redirect:/";
	}

}
