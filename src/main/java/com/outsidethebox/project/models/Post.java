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
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name="posts")
public class Post {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(min=2, max=100, message="El título debe tener un mínimo de 2 caracteres")
    private String title;

    @NotNull
    @Size(min=2, max=200, message="El contenido debe tener un mínimo de 2 caracteres")
    private String description;

    @NotNull
    @Enumerated(EnumType.STRING)
    private Category category;
    
    @NotNull
    @Size(message="Debe agregar un precio")
    private double price;
    
    @NotNull
    @Enumerated(EnumType.STRING)
    private SubCategory subCategory;
    
    @ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="supplier_id")
	private	User supplier;
    
    @OneToMany(mappedBy="postOrder", cascade=CascadeType.ALL)
    private List<Order> ordersPost; //Relacion con Order
    
    @Column(updatable=false)
    @DateTimeFormat(pattern="YYYY-MM-DD")
    private Date createdAt;

    @DateTimeFormat(pattern="YYYY-MM-DD")
    private Date updatedAt;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public SubCategory getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(SubCategory subCategory) {
        this.subCategory = subCategory;
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

    public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
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

	public Post() {
    }

    public Post(Long id, String title, String description, Category category, SubCategory subCategory, Date createdAt, Date updatedAt) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.category = category;
        this.subCategory = subCategory;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public Post(String title, String description, Category category, SubCategory subCategory, Date createdAt, Date updatedAt) {
        this.title = title;
        this.description = description;
        this.category = category;
        this.subCategory = subCategory;
        this.createdAt = createdAt;
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
