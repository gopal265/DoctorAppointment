package com.model;

public class User {
	private int id;
	private String fullName;
	private String email;
	private String phoneNumber;
	private String password;
	
	
	public User() {
		super();
	}
	public User(String fullName, String email,String phoneNumber, String password) {
		super();
		this.fullName = fullName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.password = password;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFullName() {
		return fullName;
	}


	public void setFullName(String fullName) {
		this.fullName = fullName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPhoneNumber() {
		return phoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}




	@Override
	public String toString() {
		return "User [id=" + id + ", fullName=" + fullName + ", email=" + email + ", phoneNumber=" + phoneNumber
				+ ", password=" + password + "]";
	}

	
}