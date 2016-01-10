package com.wmanual.jpa.domain;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "handbook_favor", uniqueConstraints = { @UniqueConstraint(columnNames = { "handBook_id", "user_id" }) })
public class HandBookFavoriteDomain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private long uploadDate;
	private String alias;
	private String comment;

	@ManyToOne
	private HandBookDomain handBook;

	@JsonIgnore
	@ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.LAZY, optional = false)
	private User user;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public long getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(long uploadDate) {
		this.uploadDate = uploadDate;
	}

	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public HandBookDomain getHandBook() {
		return handBook;
	}

	public void setHandBook(HandBookDomain handBook) {
		this.handBook = handBook;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
