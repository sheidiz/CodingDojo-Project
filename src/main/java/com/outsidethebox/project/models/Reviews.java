package com.outsidethebox.project.models;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name="Reviews")
public class Reviews {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(min=2, max=500, message="El contenido debe tener un mínimo de 2 caracteres")
    private String comentary;

    @NotNull
    private int rating;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="postId")
    private Post post;

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

	public String getComentary() {
		return comentary;
	}

	public void setComentary(String comentary) {
		this.comentary = comentary;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
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

	public Reviews() {
		
	}
	
	public Reviews(
			String comentary,
			int rating, 
			Post post, 
			Date createdAt, 
			Date updatedAt) {
		this.comentary = comentary;
		this.rating = rating;
		this.post = post;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}
	
	public Reviews(Long id,
			String comentary,
			int rating, 
			Post post, 
			Date createdAt, 
			Date updatedAt) {
		this.id = id;
		this.comentary = comentary;
		this.rating = rating;
		this.post = post;
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
