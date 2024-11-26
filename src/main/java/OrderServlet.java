

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<String> orders = new ArraList<>();
		try{
			ResultSet res = statement.executeQuery();
			while(res.next()) {
				String orderId = resultSet.getString("");
				String orderDate = resultSet.getString("");
				String name = resultSet.getString("");
				String status = resultSet.getString("");
				String total = resultSet.getString("");
				Order order = new Order(orderId, orderDate, name, status, total);
				orders.add(order);
			}
		}catch(){
			throw new ServletException(e);
		}
		request.getAttribute(orders);
		RequestDispatcher dispather = request.getRequestDispatcher("/OrderList.jsp");
		dispatcher.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
