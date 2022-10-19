package com.UserInformation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/** assign values from UpdateUser.jsp **/
		
		String userId = request.getParameter("uid");
	    String name = request.getParameter("name");
	    String nic = request.getParameter("nic");
	    String email = request.getParameter("email");
	    String phone = request.getParameter("phone");
	    String gender = request.getParameter("gender");
	    String userCategory = request.getParameter("uCategory");
	    String password = request.getParameter("psw");
	    
	    /** ready for the send to database **/
		boolean isTrue;
		
		isTrue = UserDBUtil.updateuser(userId, name, nic, email, phone, gender, userCategory, password);
		
		if(isTrue == true) {
			
			/** set a attribute for retrieve data from UserDBUtil**/
			
			List<User> usDetails = UserDBUtil.getUserDetails(userId);
		     request.setAttribute("usDetails", usDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("UserProfile.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<User> usDetails = UserDBUtil.getUserDetails(userId);
		     request.setAttribute("usDetails", usDetails);
		     
			RequestDispatcher dis = request.getRequestDispatcher("UserProfile.jsp");
			dis.forward(request, response);
		}
		
	}

}