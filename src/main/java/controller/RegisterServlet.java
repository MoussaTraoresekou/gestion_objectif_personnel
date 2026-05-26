package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Utilisateur;
import service.UserService;
import service.UserServiceImpl;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
	
	 private static final long serialVersionUID = 1L;
	
	 private final UserService userService = new UserServiceImpl();
	 
	 @Override
	    protected void doGet(
	            HttpServletRequest request,
	            HttpServletResponse response
	    ) throws ServletException, IOException {

		 request.getRequestDispatcher("/WEB-INF/views/register.jsp")
	       .forward(request, response);
	    }

	    @Override
	    protected void doPost(
	            HttpServletRequest request,
	            HttpServletResponse response
	    ) throws ServletException, IOException {

	        String nom = request.getParameter("nom");
	        String prenom = request.getParameter("prenom");
	        String email = request.getParameter("email");
	        String motDePasse = request.getParameter("motDePasse");

	        try {
	            Utilisateur utilisateur =
	                    new Utilisateur(nom, prenom, email, motDePasse);

	            userService.register(utilisateur);

	            request.setAttribute("success", "Compte créé avec succès. Connectez-vous."
	            );

	            request.getRequestDispatcher("/views/login.jsp")
	                    .forward(request, response);

	        } catch (Exception e) {

	            request.setAttribute("error", e.getMessage());

	            request.getRequestDispatcher("/views/register.jsp")
	                    .forward(request, response);
	        }
	    }

}
