<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="salesapp.Order" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>受注書一覧画面</title>
</head>
<body>
    <header>
        受注書管理一覧
    </header>
    <div>
    	<button type="submit" class="button" onClick="">新規作成</button>
    </div>
    <table border="1">
        <thead>
            <tr>
                <th>注文ID</th>
                <th>注文日</th>
                <th>顧客名</th>
                <th>ステータス</th>
                <th>合計金額</th>
            </tr>
        </thead>
        <tbody>
            <% 
                // サーブレットでセットした orderList を取得
                List<Order> orderList = (List<Order>) request.getAttribute("orderList");
                if (orderList != null) {
                    for (Order order : orderList) {
            %>
            <tr>
                <td><%= order.getOrderId() %></td>
                <td><%= order.getOrderDate() %></td>
                <td><%= order.getName() %></td>
                <td><%= order.getStatus() %></td>
                <td><%= order.getTotal() %></td>
            </tr>
            <% 
                    }
                } else {
            %>
            <tr>
                <td colspan="5">注文情報はありません。</td>
            </tr>
            <% 
                }
            %>
        </tbody>
    </table>
</body>
</html>
