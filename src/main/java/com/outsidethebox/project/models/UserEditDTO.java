package com.outsidethebox.project.models;

import jakarta.persistence.Id;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

public class UserEditDTO {

	@Id
	private Long id;

	@NotEmpty(message = "Coloque su Email")
	@Email(message = "email invalido")
	private String email;

	@NotEmpty(message = "Coloque su nombre completo")
	@Size(min = 8, message = "El nombre completo debe contener al menos 8 caracteres.")
	private String fullName;

	@NotEmpty(message = "Coloque su número de teléfono")
	private String phoneNumber;

	private String profilePicture;

	public UserEditDTO() {
	}

	public UserEditDTO(Long id, String email, String fullName, String phoneNumber, String profilePicture) {
		this.id = id;
		this.email = email;
		this.fullName = fullName;
		this.phoneNumber = phoneNumber;
		this.profilePicture = profilePicture;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getProfilePicture() {
		return profilePicture;
	}

	public void setProfilePicture(String profilePicture) {
		this.profilePicture = profilePicture;
	}

}
