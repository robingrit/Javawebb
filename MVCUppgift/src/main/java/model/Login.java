package model;

public class Login {
	
	private String user;
	private String pass;
	



	public void settouser(String touser, String topass) {

		this.setUser(touser);
		this.setPass(topass);

	}



	public String getPass() {
		return pass;
	}



	public void setPass(String pass) {
		this.pass = pass;
	}



	public String getUser() {
		return user;
	}



	public void setUser(String user) {
		this.user = user;
	}
	public boolean getLogin() {
		return LoginHandler.getLogin(user, pass);
		
	}
	

	

	

}


