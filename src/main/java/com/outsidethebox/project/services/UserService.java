package com.outsidethebox.project.services;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.outsidethebox.project.models.User;
import com.outsidethebox.project.repositories.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository ur;
	
	public User register(User newUser, BindingResult result) {
		String password = newUser.getPassword();
		String confirm = newUser.getConfirm();
		if (!password.equals(confirm)) {
			result.rejectValue("confirm", "Matches", "Las contraseñas no son iguales.");
		}
		String email = newUser.getEmail();
		User userExist= ur.findByEmail(email);
		if(userExist != null) {
			result.rejectValue("email", "Unique", "Ya existe un usuario con este email.");
		}
		if(result.hasErrors()) {
			return null;
		} else {
			String passHash= BCrypt.hashpw(password, BCrypt.gensalt());
			newUser.setPassword(passHash);
			return ur.save(newUser);
		}
	}
	
	public User login(String email, String password) {
		
		User userTryingLogin= ur.findByEmail(email);
		
		if (userTryingLogin == null) {
			return null;
		}
		
		if (BCrypt.checkpw(password, userTryingLogin.getPassword())) {
			return userTryingLogin;
		} else {
			return null;
		}
	}
	
	public User findById(Long id) {
        return ur.findById(id).orElse(null);
    }
}
