package com.entity;

public class BookDtls {
	private int bookId;
	private String bookName;
	private String narrator;
	private String description;
	private double price;
	private String bookCategory;
	private String photoName;
	private String email;
	
	public BookDtls() {
		super();
	}

	public BookDtls(String bookName, String narrator, String description, double price, String bookCategory,
			String photoName, String email) {
		super();
		this.bookName = bookName;
		this.narrator = narrator;
		this.description = description;
		this.price = price;
		this.bookCategory = bookCategory;
		this.photoName = photoName;
		this.email = email;
	}



	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getNarrator() {
		return narrator;
	}

	public void setNarrator(String narrator) {
		this.narrator = narrator;
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

	public String getBookCategory() {
		return bookCategory;
	}

	public void setBookCategory(String bookCategory) {
		this.bookCategory = bookCategory;
	}

	public String getPhotoName() {
		return photoName;
	}

	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "BookDtls [bookId=" + bookId + ", bookName=" + bookName + ", narrator=" + narrator + ", description="
				+ description + ", price=" + price + ", bookCategory=" + bookCategory + ", photoName=" + photoName
				+ ", email=" + email + "]";
	}
	
	

}
