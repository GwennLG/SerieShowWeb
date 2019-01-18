package fr.glegalludec;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.glegalludec.LoginPostName;
import fr.glegalludec.DataBaseUser;
import fr.glegalludec.PostNamesChecker;
import fr.glegalludec.User;

/**
 * Servlet implementation class ConnexionServlet
 */
@WebServlet("/Connexion")
public class ConnexionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String loginErrorMessage = "";
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConnexionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Vérifier la présence d'une session
		HttpSession session = request.getSession();

		if (session.getAttribute(LoginPostName.EMAIL.getName()) != null) {
			response.sendRedirect("/SerieShow/EspaceMembre");
			
			return;
		} else {
			// Si une session existe, on redirige sur une autre page
			this.getServletContext().getRequestDispatcher("/SerieShow/Connexion/").forward(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] requiredNames = { LoginPostName.EMAIL.getName(), LoginPostName.PASSWORD.getName(),
				LoginPostName.STAYCO.getName()};
		
		
		String email = "", password = "";

		// Vérifier la présence de ces champs requis dans la requete
		if (PostNamesChecker.areNamesFoundInPostRequest(request, requiredNames)) {
			email = request.getParameter(LoginPostName.EMAIL.getName());
			password = request.getParameter(LoginPostName.PASSWORD.getName());

			// Existence du potentiel utilisateur
			User user = DataBaseUser.selectByPseudoOrEmail(email);
			if (user != null) {

				// Vérifier son mot de passe
				if (user.getPassword().equals(password)) {
					HttpSession session = request.getSession();
					session.setAttribute(LoginPostName.EMAIL.getName(), email);
					session.setAttribute(LoginPostName.PASSWORD.getName(), password);
					response.sendRedirect("/SerieShow/EspaceMembre");

				} else {
					this.loginErrorMessage = "Le mot de passe est incorrect !";
					request.setAttribute("error login", this.loginErrorMessage);
					doGet(request, response);
				}
			} else {
				this.loginErrorMessage = "Le pseudo ou l'adresse e-mail est incorrect";
				request.setAttribute("error login", this.loginErrorMessage);
				doGet(request, response);
			}
		} else {
			doGet(request, response);
		}
		
		
	}

}
