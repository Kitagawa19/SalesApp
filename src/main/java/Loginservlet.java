


import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Loginservlet
*/
@WebServlet("/Loginservlet")

public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	//ログイン画面を表示させる
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/Login.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("UTF-8");
			
			//ログイン画面で入力された値の取得
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			
	}
}
