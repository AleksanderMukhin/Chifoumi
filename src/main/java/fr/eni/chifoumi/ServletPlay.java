package fr.eni.chifoumi;

import java.io.IOException;
import java.util.Random;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SersletPlay
 */
public class ServletPlay extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletPlay() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String choice = request.getParameter("choice");

		Random random = new Random();
		int randomNumber = random.nextInt(3) + 1;
		String newNomberString = String.valueOf(randomNumber);

		// Устанавливаем атрибут newNomberString в объект HttpServletRequest
		request.setAttribute("newNomberString", newNomberString);
		request.setAttribute("choice", choice);

		RequestDispatcher dispatcher = request.getRequestDispatcher("resultat.jsp");
		dispatcher.forward(request, response);

//		doGet(request, response);
	}

}
