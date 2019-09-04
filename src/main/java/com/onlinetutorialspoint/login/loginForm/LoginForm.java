package com.onlinetutorialspoint.login.loginForm;


//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;

//@Entity
public class LoginForm {
	
	//@Id
	//@GeneratedValue
	public int id;
	
	public String userName;

	public String password;


	public LoginForm(){
		
	}
	
	public LoginForm(int id, String userName, String password){
		this.id = id;
		this.userName = userName;
		this.userName = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String toString() {
		return "LoginForm(UserName: " + this.userName + ", Password: " + this.password + ")";
	}
}
