package com.outsidethebox.project.models;

import java.util.Date;
import java.util.Optional;

import org.springframework.format.annotation.DateTimeFormat;

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
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Future;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "orders")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull
	@Enumerated(EnumType.STRING)
	private Category category;

	@NotNull
	private String statusOrder;

	@NotNull
	@Size(min = 2, max = 200, message = "Ingrese detalles que deberia conocer el Laburante.")
	private String description;

	@NotNull
	private Double price;

	@Future(message = "La fecha debe ser posterior a la fecha actual.")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message = "Es necesario ingresar una fecha estimada.")
	private Date estimatedDate;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "post_id")
	private Post postOrder; // El posteo que se selecciono en la orden

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	private User client; // El cliente de la orden

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "coupon_id")
	private Coupon couponOrder;

	@Column(updatable = false)
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date createdAt;

	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date updatedAt;

	public Order() {
	}

	public Order(Post postOrder, User client, Category category, String description, double price, String statusOrder,
			Date estimatedDate, Date createdAt) {
		this.postOrder = postOrder;
		this.client = client;
		this.category = category;
		this.description = description;
		this.price = price;
		this.statusOrder = statusOrder;
		this.estimatedDate = estimatedDate;
		this.createdAt = createdAt;
	}

	public Order(Post postOrder, User client, Category category, String description, double price, String statusOrder,
			Date estimatedDate, Coupon couponOrder, Date createdAt) {
		this.postOrder = postOrder;
		this.client = client;
		this.category = category;
		this.description = description;
		this.price = price;
		this.statusOrder = statusOrder;
		this.estimatedDate = estimatedDate;
		this.couponOrder = couponOrder;
		this.createdAt = createdAt;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getStatusOrder() {
		return statusOrder;
	}

	public void setStatusOrder(String statusOrder) {
		this.statusOrder = statusOrder;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Date getEstimatedDate() {
		return estimatedDate;
	}

	public void setEstimatedDate(Date estimatedDate) {
		this.estimatedDate = estimatedDate;
	}

	public Post getPostOrder() {
		return postOrder;
	}

	public void setPostOrder(Post postOrder) {
		this.postOrder = postOrder;
	}

	public User getClient() {
		return client;
	}

	public void setClient(User client) {
		this.client = client;
	}

	public Coupon getCouponOrder() {
		return couponOrder;
	}

	public void setCouponOrder(Coupon couponOrder) {
		this.couponOrder = couponOrder;
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
