package model;

public class User {
	String userID;
	String uName;
	String password;
	
	public User(String userID, String uName, String password) {
		super();
		this.userID = userID;
		this.uName = uName;
		this.password = password;
	}
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
