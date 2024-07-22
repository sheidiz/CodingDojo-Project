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

    @GetMapping("/servicios/mudanzas")
    public String serviceMudanzas(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Mudanzas", "Mudanzas");
        model.addAttribute("posts", postService.findByCategory(Category.Fletero)); // Assuming "Mudanzas" corresponds to "Fletero"

        return "index.jsp";
    }

    @GetMapping("/servicios/jardineria")
    public String serviceJardineria(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Jardinería", "Jardinero");
        model.addAttribute("posts", postService.findByCategory(Category.Jardinero));

        return "index.jsp";
    }

    @GetMapping("/servicios/electricistas")
    public String serviceElectricistas(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Electricistas", "Electricista");
        model.addAttribute("posts", postService.findByCategory(Category.Electricista));

        return "index.jsp";
    }

    @GetMapping("/servicios/pintores")
    public String servicePintores(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Pintores", "Pintor");
        model.addAttribute("posts", postService.findByCategory(Category.Pintor));

        return "index.jsp";
    }

    @GetMapping("/servicios/reparaciones")
    public String serviceReparaciones(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Reparaciones", "Reparaciones");
        model.addAttribute("posts", postService.findByCategory(Category.Plomero)); // Assuming "Reparaciones" corresponds to "Plomero"

        return "index.jsp";
    }

    @GetMapping("/servicios/limpieza")
    public String serviceLimpieza(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }
        ModelUtils.setupModelCategory(userTemp, model, "Limpieza", "Limpieza");
        model.addAttribute("posts", postService.findByCategory(Category.Otro)); // Assuming "Limpieza" corresponds to "Otro"

        return "index.jsp";
    }

    @GetMapping("/servicios/carpintero")
    public String serviceCarpintero(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Carpinteros", "Carpintero");
        model.addAttribute("posts", postService.findByCategory(Category.Carpintero));

        return "index.jsp";
    }

    @GetMapping("/servicios/plomero")
    public String servicePlomero(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Plomeros", "Plomero");
        model.addAttribute("posts", postService.findByCategory(Category.Plomero));

        return "index.jsp";
    }

    @GetMapping("/servicios/gasista")
    public String serviceGasista(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Gasistas", "Gasista");
        model.addAttribute("posts", postService.findByCategory(Category.Gasista));

        return "index.jsp";
    }

    @GetMapping("/servicios/otro")
    public String serviceOtro(HttpSession session, Model model) {
        User userTemp = (User) session.getAttribute("userInSession");
        if (userTemp == null) {
            return "redirect:/iniciar-sesion";
        }

        ModelUtils.setupModelCategory(userTemp, model, "Otros", "Otro");
        model.addAttribute("posts", postService.findByCategory(Category.Otro));

        return "index.jsp";
    }

    // Additional methods from the second part
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
