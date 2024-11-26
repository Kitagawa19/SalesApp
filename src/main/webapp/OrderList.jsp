<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <table bordr="1">
        <thead>
            <tr>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <% ArrayList<Order> orderList = (ArrayList<Order>) request.getAttribute("orderList");
                if(orderList != null){
                    for (Order order : orderList) {
            %>
            <tr>
                <td><%= order.orderId %></td>
                <td><%= order.orderDate %></td>
                <td><%= order.name %></td>
                <td><%= order.status %></td>
                <td><%= order.total %></td>
            </tr>
                    }
                }
            %>
        </tbody>
    </table>
</body>
</html>