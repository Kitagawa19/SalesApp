
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;  // ArrayListをインポートしますが、型はListにします。
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import salesapp.Order;

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
		//　別ファイルでOrderクラスを作成すると解決するが保持するデータがどのようなものか未定なため未解決
		List<Order> orders = new ArrayList<Order>();

		try{
			Connection conn = DriverManager.getConnection(url,user,email);
			Statement statement = conn.createStatement();
			String query="";
			ResultSet resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				String orderId = resultSet.getString("");
				String orderDate = resultSet.getString("");
				String name = resultSet.getString("");
				String status = resultSet.getString("");
				String total = resultSet.getString("");
				Order order = new Order(orderId, orderDate, name, status, total);
				orders.add(order);
			}
		}catch(Exception e){
			throw new ServletException(e);
		}
		request.setAttribute("orderList",orders);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/OrderList.jsp");
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
