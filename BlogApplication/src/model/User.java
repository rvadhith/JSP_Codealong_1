package model;

import java.time.LocalDate;

public class User {
	private String email;
	private String password;
	private LocalDate date;
	
	//To get and set email
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	//To get and set password
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	//To get and set date
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date2) {
		this.date = date2;
	}
}
