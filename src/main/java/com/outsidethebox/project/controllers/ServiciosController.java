package com.outsidethebox.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.outsidethebox.project.models.Category;
import com.outsidethebox.project.models.User;
import com.outsidethebox.project.services.PostService;
import com.outsidethebox.project.services.UserService;
import com.outsidethebox.project.utils.ModelUtils;

import jakarta.servlet.http.HttpSession;

@Controller
public class ServiciosController {

    @Autowired
    private UserService serv;
    
    @Autowired
    private PostService postService;

    @GetMapping("/servicios")
    public String servicios(Model model) {
        return "redirect:/servicios/mudanzas";
    }

    @GetMapping("/servicios/electricista")
    public String serviceElectricista(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Electricistas", "Electricista");
        model.addAttribute("posts", postService.findByCategory(Category.Electricista)); // Añadir lista de posts

        return "index.jsp";
    }

    @GetMapping("/servicios/gasista")
    public String serviceGasista(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Gasistas", "Gasista");
        model.addAttribute("posts", postService.findByCategory(Category.Gasista)); // Añadir lista de posts

        return "index.jsp";
    }

    @GetMapping("/servicios/pintor")
    public String servicePintor(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Pintores", "Pintor");
        model.addAttribute("posts", postService.findByCategory(Category.Pintor)); // Añadir lista de posts

        return "index.jsp";
    }

    @GetMapping("/servicios/plomero")
    public String servicePlomero(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Plomeros", "Plomero");
        model.addAttribute("posts", postService.findByCategory(Category.Plomero)); // Añadir lista de posts

        return "index.jsp";
    }

    @GetMapping("/servicios/albañil")
    public String serviceAlbanil(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Albañiles", "Albañil");
        model.addAttribute("posts", postService.findByCategory(Category.Albañil)); // Añadir lista de posts

        return "index.jsp";
    }

    @GetMapping("/servicios/carpintero")
    public String serviceCarpintero(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Carpinteros", "Carpintero");
        model.addAttribute("posts", postService.findByCategory(Category.Carpintero)); // Añadir lista de posts

        return "index.jsp";
    }

    @GetMapping("/servicios/jardinero")
    public String serviceJardinero(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Jardineros", "Jardinero");
        model.addAttribute("posts", postService.findByCategory(Category.Jardinero)); // Añadir lista de posts

        return "index.jsp";
    }

    @GetMapping("/servicios/fletero")
    public String serviceFletero(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Fleteros", "Fletero");
        model.addAttribute("posts", postService.findByCategory(Category.Fletero)); // Añadir lista de posts

        return "index.jsp";
    }

    @GetMapping("/servicios/otro")
    public String serviceOtro(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Otros", "Otro");
        model.addAttribute("posts", postService.findByCategory(Category.Otro)); // Añadir lista de posts

        return "index.jsp";
    }
}
