package com.wmanual.jpa.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="wmanual_brand")
//@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class ManualBrandDomain {
		
		
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private String img;
	private String link;
	private String tel;
	private String supportLink;
	private String contactLink;
	private char fletter;
	private int seq;
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
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}	
	public String getSupportLink() {
		return supportLink;
	}
	public void setSupportLink(String supportLink) {
		this.supportLink = supportLink;
	}
	public String getContactLink() {
		return contactLink;
	}
	public void setContactLink(String contactLink) {
		this.contactLink = contactLink;
	}
	public char getFletter() {
		return fletter;
	}
	public void setFletter(char fletter) {
		this.fletter = fletter;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
}
