
public class user {
  private String cardnumber;
  private String email;
  private String password; 
  
  public user(String cardnumber, String email , String password)
  {
	  this.cardnumber = cardnumber;
	  this.email      = email;
	  this.password   = password;
  }

public String getCardnumber() {
	return cardnumber;
}

public void setCardnumber(String cardnumber) {
	this.cardnumber = cardnumber;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}
  
  

  
  
}
