package fr.glegalludec;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EspaceMembre
 */
@WebServlet("/EspaceMembre")
public class EspaceMembre extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String loginErrorMessage = "";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EspaceMembre() {
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
					//TODO
					this.getServletContext().getRequestDispatcher("/Pages/EspaceMembre/").forward(request, response);
					
					return;
				} else {
					// Si une session n'existe pas, on redirige sur une autre page
					response.sendRedirect("/SerieShow/Connexion");
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] requiredNames = {LoginPostName.PASSWORD.getName()};


		String email = "", password = "", pseudo = "", passwordmodif ="", passwordconf="";

		// Vérifier la présence de ces champs requis dans la requete
		if (PostNamesChecker.areNamesFoundInPostRequest(request, requiredNames)) {
			email = request.getParameter(LoginPostName.EMAIL.getName());
			password = request.getParameter(LoginPostName.PASSWORD.getName());
			pseudo = request.getParameter(LoginPostName.NAME.getName());
			passwordmodif = request.getParameter(LoginPostName.PASSWORD_C.getName());
			passwordconf = request.getParameter(LoginPostName.PASSWORD_CF.getName());
			
					

			// Existence du potentiel utilisateur
			User user = DataBaseUser.selectByPseudoOrEmail(email);
			if (user != null) {

				// Vérifier son mot de passe
				if (user.getPassword().equals(password)) {
					
					HttpSession session = request.getSession();
					

					if (email != null && email.length()>2)
					{
						if (email.length()>0)
						{
							session.setAttribute(LoginPostName.EMAIL.getName(), email);
						}
					}

					if (passwordmodif != null && passwordconf != null)
					{
						if(passwordmodif == passwordconf) 	
						{
							session.setAttribute(LoginPostName.PASSWORD.getName(), password);
						}
					}
					
					
					if(pseudo != null) 
					{
						if(pseudo.length() > 0)
						session.setAttribute(LoginPostName.NAME.getName(), pseudo);
					}
					
					
					
					
					
					response.sendRedirect("/SerieShow/EspaceMembre");

				} 
				else 
				{
					this.loginErrorMessage  = "Le mot de passe est incorrect !";
					request.setAttribute("error login", this.loginErrorMessage);
					doGet(request, response);
				}
			} 
			else 
			{
				this.loginErrorMessage = "Vous n'êtes pas authentifié";
				request.setAttribute("error login", this.loginErrorMessage);
				doGet(request, response);
			}
		} 
		else 
		{
			doGet(request, response);
		}


	}




}
