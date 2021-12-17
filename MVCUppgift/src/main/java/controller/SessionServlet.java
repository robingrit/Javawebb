package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Login;
import model.Bean;
/**
 * Servlet implementation class SessionServlet
 */
@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionServlet() {
        super();
        
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doPost(request, response);
	}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	    

		
		// Session is a part of the request
		// Session is created when the user visits the website
		
		String touser = request.getParameter("uname");
		String topass = request.getParameter("psw");
		
		Login login = new Login();
		
		login.settouser(touser, topass);
		
		
		
		
		
		
		
		
		
	    if(login.getLogin()) {
	    	HttpSession session = request.getSession();
	    	
	    	
	    	request.setAttribute("name", touser);

			session.setMaxInactiveInterval(600); // session timeout in sec

			// name add data into the session
			session.setAttribute("mySession", "This is what my session has in it");
			
			

			// send it all to the next page
			RequestDispatcher rd = request.getRequestDispatcher("user.jsp");
			rd.forward(request, response);
	    	
	    }
	    else {
	    	HttpSession session = request.getSession();

			 //session.setMaxInactiveInterval(5); // session timeout in sec

			// name add data into the session
			session.setAttribute("mySession", null);

			// send it all to the next page
			RequestDispatcher rd = request.getRequestDispatcher("user.jsp");
			rd.forward(request, response);
	    }
	    
		

		

	}

}
