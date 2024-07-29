package com.outsidethebox.project.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.outsidethebox.project.models.User;
import com.outsidethebox.project.models.UserEditDTO;
import com.outsidethebox.project.services.UserService;
import com.outsidethebox.project.utils.ModelUtils;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class UserController {

	@Autowired
	private UserService serv;

	private static String UPLOADED_FOLDER = "src/main/resources/static/images/users/";

	@GetMapping("/registro")
	public String signup(Model model, @ModelAttribute("newUser") User newUser, HttpSession session) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp != null) {
			return "redirect:/";
		}
		return "public/registro.jsp";
	}

	@GetMapping("/registro_laburante")
	public String signupSupplier(Model model, @ModelAttribute("newUser") User newUser, HttpSession session) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp != null) {
			return "redirect:/";
		}
		return "public/registro_laburante.jsp";
	}

	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, HttpSession session,
			Model model, @RequestParam("image") MultipartFile file) {

		// save profile pic
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
				Files.write(path, bytes);

				newUser.setProfilePicture("/images/users/" + file.getOriginalFilename());
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			// default profile pic
			newUser.setProfilePicture("/images/users/default-profile.png");
		}

		// Registro del usuario
		serv.register(newUser, result);

		// Si hay errores de validación, vuelve a mostrar el formulario adecuado
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			if (newUser.isSupplier()) {
				return "public/registro_laburante.jsp";
			} else {
				return "public/registro.jsp";
			}
		}

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

	@GetMapping("/editar-perfil")
	public String editProfile(Model model, HttpSession session, @ModelAttribute("user") UserEditDTO userEdit) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/";
		}
		User foundUser = serv.findById(userTemp.getId());
		userEdit = new UserEditDTO(foundUser.getId(), foundUser.getEmail(), foundUser.getFullName(), foundUser.getPhoneNumber(), foundUser.getProfilePicture());

		model.addAttribute("user", userEdit);
		ModelUtils.setupModel(foundUser, model, "Editar Perfil", "/private/editar-perfil.jsp");

		return "index.jsp";
	}

	@PutMapping("/edicion-perfil")
	public String updateProfile(@Valid @ModelAttribute("user") UserEditDTO userEdit, BindingResult result,
			@RequestParam("image") MultipartFile file, HttpSession session, RedirectAttributes redirectAttributes,
			Model model) {
		User userTemp = (User) session.getAttribute("userInSession");
		if (userTemp == null) {
			return "redirect:/";
		}
		
		User foundUser = serv.findById(userTemp.getId());
		
		if(result.hasErrors()) {
			model.addAttribute("user", userEdit);
			ModelUtils.setupModel(foundUser, model, "Editar Perfil", "/private/editar-perfil.jsp");
			return "index.jsp";
		}
		
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
				Files.write(path, bytes);
				foundUser.setProfilePicture("/images/users/" + file.getOriginalFilename());
			} catch (IOException e) {
				e.printStackTrace();
				redirectAttributes.addFlashAttribute("error", "Error al guardar la foto de perfil.");
				return "index.jsp";
			}
		}
		foundUser.setFullName(userEdit.getFullName());
		foundUser.setPhoneNumber(userEdit.getPhoneNumber());
		foundUser.setConfirm(foundUser.getPassword());

		User updatedUser = serv.updateUser(foundUser);

		session.setAttribute("userInSession", updatedUser);
		return "redirect:/perfil";
	}
}
