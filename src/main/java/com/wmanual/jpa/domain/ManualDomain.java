package com.wmanual.jpa.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="wmanual")
//@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class ManualDomain {
		
		
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private String brand;
	private String ebrand;
	private String type;
	private String subType;
	private String tags;
	private String des;
	private String version;
	private String size;
	@Column(columnDefinition="BIGINT default 0")
	private long uploadDate;
	@Column(columnDefinition="BIGINT default 0")
	private long productDate;
	private String productSize;
	@Column(columnDefinition="INT default 0")
	private int status;
	@Column(length = 500)
	private String url;
	@Column(length = 500)
	private String lurl;	
	private String imgUrl;
	private String owner;
	@Column(columnDefinition="INT default 0")
	private int downloadCount;
	@Column(columnDefinition="INT default 0")
	private int viewCount;
	@Column(columnDefinition="INT default 0")
	private int favorCount;
	private String lan;
		
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public String getSubType() {
		return subType;
	}
	public void setSubType(String subType) {
		this.subType = subType;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getSize() {
		return size;
	}
	public long getProductDate() {
		return productDate;
	}
	public void setProductDate(long productDate) {
		this.productDate = productDate;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public long getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(long uploadDate) {
		this.uploadDate = uploadDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getLurl() {
		return lurl;
	}
	public void setLurl(String lurl) {
		this.lurl = lurl;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public int getDownloadCount() {
		return downloadCount;
	}
	public void setDownloadCount(int downloadCount) {
		this.downloadCount = downloadCount;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public int getFavorCount() {
		return favorCount;
	}
	public void setFavorCount(int favorCount) {
		this.favorCount = favorCount;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getLan() {
		return lan;
	}
	public void setLan(String lan) {
		this.lan = lan;
	}
	public String getEbrand() {
		return ebrand;
	}
	public void setEbrand(String ebrand) {
		this.ebrand = ebrand;
	}
}
