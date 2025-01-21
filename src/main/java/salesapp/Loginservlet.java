package salesapp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Loginservlet
 */
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // データベース接続情報
    private static final String DB_URL = "jdbc:mysql://localhost:3307/mysql"; // データベースURL
    private static final String DB_USER = "root"; // データベースユーザー名
    private static final String DB_PASSWORD = "ktcpass23"; // データベースパスワード

    // ログイン画面を表示させる
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Login.jsp");
        dispatcher.forward(request, response);
    }

    // ログイン処理
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        // ログイン画面で入力された値の取得
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            // データベースに接続
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQLクエリを準備（ユーザー名、メールアドレス、パスワードで照合）
            String sql = "SELECT * FROM m_user WHERE name = ? AND email = ? AND password = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name); // 1番目のパラメータに name を設定
            stmt.setString(2, email); // 2番目のパラメータに email を設定
            stmt.setString(3, password); // 3番目のパラメータに password を設定

            // クエリを実行して結果を取得
            ResultSet rs = stmt.executeQuery();

            // 結果が1件でもあればログイン成功
            if (rs.next()) {
                // ログイン成功時、OrderList.jspに遷移
                RequestDispatcher dispatcher = request.getRequestDispatcher("/OrderList.jsp");
                dispatcher.forward(request, response);
            } else {
                // ログイン失敗時、エラーメッセージを設定してLogin.jspに戻る
                request.setAttribute("errorMessage", "ユーザー名、メールアドレス、またはパスワードが違います");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/Login.jsp");
                dispatcher.forward(request, response);
            }

            // リソースを閉じる
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("データベース接続エラー: " + e.getMessage(), e);
        }
    }
}
