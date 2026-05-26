package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.User;
import models.enums.EnumRole;
import service.UserService;
import service.UserServiceImpl;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	  private final UserService userService = new UserServiceImpl();

	    @Override
	    protected void doGet(
	            HttpServletRequest request,
	            HttpServletResponse response
	    ) throws ServletException, IOException {

	    	request.getRequestDispatcher("/WEB-INF/views/login.jsp")
	        .forward(request, response);
	    }

	    @Override
	    protected void doPost(
	            HttpServletRequest request,
	            HttpServletResponse response
	    ) throws ServletException, IOException {

	        String email = request.getParameter("email");
	        String motDePasse = request.getParameter("motDePasse");
	        User user = userService.login(email, motDePasse);

	        if (user == null) {
	            request.setAttribute( "error", "Email ou mot de passe incorrect." );

	            request.getRequestDispatcher("/WEB-INF/views/login.jsp")
	                    .forward(request, response);

	            return;
	        }

	        HttpSession session = request.getSession();
	        session.setAttribute("userConnecte", user);
	        if (user.getRole() == EnumRole.ADMIN) {
	            response.sendRedirect(request.getContextPath() + "/admin/dashboard");
	        } else {
	            response.sendRedirect(request.getContextPath() + "/user/dashboard");
	        }
	    }

}
