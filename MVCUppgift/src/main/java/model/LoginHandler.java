package model;

public class LoginHandler {
	
	private static String user1 = "kalle";
	private static String user2 = "monty";
	
	private static String userpass1 = "anka";
	private static String userpass2 = "python";
	
	
	
	
	
	
	
	public static boolean getLogin(String user, String pass) {
		System.out.println(user);
		
		if (user.equals(user1) && pass.equals(userpass1)) {
			return true;
			 

		} else if (user.equals(user2) && pass.equals(userpass2)) {
			return true;
			
		}

		else {return false;
			
		}
		
	
			
		
	}



	

}
