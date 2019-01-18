package fr.glegalludec;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.javafx.util.TempState;


/**
 * Servlet implementation class Gestion
 */
@WebServlet("/Gestion")
public class Gestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub 
		HttpSession session = request.getSession();
		if (session.getAttribute(LoginPostName.USERNAME.getName()) == null) {
			this.getServletContext().getRequestDispatcher("/Pages/Connexion/").forward(request, response);
			return;
		}
		
		
		//this.getServletContext().getRequestDispatcher("/Pages/Gestion/").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		doGet(request, response);
		
	}

	
}
