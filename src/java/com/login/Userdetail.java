package com.login;

public class Userdetail {
	
	private String  pinnumber;
	private String  password;
	
	public Userdetail(String pinnumber, String password)
	{
		this.pinnumber = pinnumber;
		this.password  = password;
	}

	public String getPinnumber() {
		return pinnumber;
	}

	public void setPinnumber(String pinnumber) {
		this.pinnumber = pinnumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
