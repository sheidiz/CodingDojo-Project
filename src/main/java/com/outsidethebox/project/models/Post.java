package com.outsidethebox.project.models;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Digits;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "posts")
public class Post {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private boolean isHighlighted = false;

	@NotNull
	private boolean statusPost = true;

	@NotNull
	@Size(min = 2, max = 100, message = "Añade un título a tu servicio")
	private String title;

	@NotNull
	@Size(min = 2, max = 200, message = "¡No olvides añadir una descripción!")
	private String description;

	@NotNull
	@Enumerated(EnumType.STRING)
	private Category category;

	@NotNull(message = "Añade un estimado del valor de tu servicio")
	@Min(value = 0, message = "| El precio debe ser mayor o igual a 0")
	private Double price;

	@NotNull
	@Enumerated(EnumType.STRING)
	private SubCategory subCategory;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "supplier_id")
	private User supplier;

	@OneToMany(mappedBy = "postOrder", cascade = CascadeType.ALL)
	private List<Order> ordersPost; // Relacion con Order

	@OneToMany(mappedBy = "post", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Review> reviews;

	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

	public Post() {
	}

	public Post(Long id, User supplier, String title, String description, Category category, SubCategory subCategory) {
		this.id = id;
		this.supplier = supplier;
		this.title = title;
		this.description = description;
		this.category = category;
		this.subCategory = subCategory;
	}

	public Post(User supplier, String title, String description, Category category, SubCategory subCategory) {
		this.title = title;
		this.supplier = supplier;
		this.description = description;
		this.category = category;
		this.subCategory = subCategory;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public boolean isHighlighted() {
		return isHighlighted;
	}

	public void setHighlighted(boolean isHighlighted) {
		this.isHighlighted = isHighlighted;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public boolean isStatusPost() {
		return statusPost;
	}

	public void setStatusPost(boolean statusPost) {
		this.statusPost = statusPost;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public SubCategory getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}

	public User getSupplier() {
		return supplier;
	}

	public void setSupplier(User supplier) {
		this.supplier = supplier;
	}

	public List<Order> getOrdersPost() {
		return ordersPost;
	}

	public void setOrdersPost(List<Order> ordersPost) {
		this.ordersPost = ordersPost;
	}

	public List<Review> getReviews() {
		return reviews;
	}

	public void setReviews(List<Review> reviews) {
		this.reviews = reviews;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}
}
