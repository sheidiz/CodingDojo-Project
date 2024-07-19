package com.outsidethebox.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.outsidethebox.project.models.Order;
import com.outsidethebox.project.models.Post;
import com.outsidethebox.project.models.User;
import com.outsidethebox.project.services.OrderService;
import com.outsidethebox.project.services.PostService;
import com.outsidethebox.project.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class OrderController {

   @Autowired 
   private OrderService os;
   
   @Autowired
   private PostService ps;
   
   @Autowired 
   private UserService us;

   @GetMapping("/order/{postId}")
   public String order(@PathVariable("postId") Long postId,
		   			   HttpSession session,
		   			   Model model) {
	   User userTemp = (User) session.getAttribute("userInSession"); 
       if (userTemp == null) {
           return "redirect:/";
       }
       
       Post post = ps.findById(postId);
       if(post == null) {
    	   return "redirect:/dashboard";
       }
       
       Order order = new Order();
       order.setPostOrder(post);
       order.setCategory(post.getCategory().name());
       order.setDescription(post.getDescription());
       order.setPrice(post.getPrice());
       
       model.addAttribute("order", order);
       model.addAttribute("post", post);
       return "newOrder.jsp";
   }

   @PostMapping("/order/create")
   public String orderCreate(@Valid @ModelAttribute("order") Order order,
		   					 BindingResult result,
                             HttpSession session) {
	   User userTemp = (User) session.getAttribute("userInSession");
       if (userTemp == null) {
           return "redirect:/";
       }
       
       if (result.hasErrors()) {
           return "newOrder.jsp";
       } else {
           Post post = ps.findById(order.getPostOrder().getId());
           order.setPostOrder(post);
           User user = us.findById(userTemp.getId());
           order.setClient(user);
           
           os.save(order);

           return "redirect:/dashboard";
       }
   }
}







