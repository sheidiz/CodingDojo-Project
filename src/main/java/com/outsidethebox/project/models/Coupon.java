package com.outsidethebox.project.models;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "coupons")
public class Coupon {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty(message = "El nombre no puede estar vacio")
	@Size(min = 2, message = "El nombre tiene que tener al menos 2 caracteres.")
	private String name;

	@NotEmpty
	private String description;

	@NotNull(message = "El descuento no puede estar vacío")
	private Long discount;

	@NotNull(message = "El límite del cupón no puede estar vacío")
	private Double couponLimit;

	@NotNull(message = "La fecha de expiración no puede estar vacía")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date expiration;

	@OneToMany(mappedBy = "couponOrder", cascade = CascadeType.ALL)
	private List<Order> ordersCoupon; // Relacion con Order

	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

	public Coupon() {
	}

	public Coupon(String name, String description, Long discount, Double couponLimit, Date expiration) {
		this.name = name;
		this.description = description;
		this.discount = discount;
		this.couponLimit = couponLimit;
		this.expiration = expiration;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getDiscount() {
		return discount;
	}

	public void setDiscount(Long discount) {
		this.discount = discount;
	}

	public Double getCouponLimit() {
		return couponLimit;
	}

	public void setCouponLimit(Double couponLimit) {
		this.couponLimit = couponLimit;
	}

	public Date getExpiration() {
		return expiration;
	}

	public void setExpiration(Date expiration) {
		this.expiration = expiration;
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

	public List<Order> getOrdersCoupon() {
		return ordersCoupon;
	}

	public void setOrdersCoupon(List<Order> ordersCoupon) {
		this.ordersCoupon = ordersCoupon;
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
