<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>受注書一覧画面</title>
    <style>
        /* ヘッダーのスタイル */
        .header {
            background-color: #f4f4f4;
            padding: 20px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
        }

        /* テーブルのスタイル */
        .order-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .order-table th, .order-table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        .order-table th {
            background-color: #007BFF;
            color: white;
        }

        /* 行ごとのホバー効果 */
        .order-table tr:hover {
            background-color: #f1f1f1;
        }

        /* 戻るボタンのスタイル */
        .back-button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
            margin-top: 20px;
            display: block;
            width: 200px;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
        }

        .back-button:hover {
            background-color: #0056b3;
        }

        /* テーブル内のボタンのスタイル */
        .action-buttons {
            display: flex;
            gap: 10px;
        }

        .action-button {
            padding: 5px 10px;
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
        }

        .action-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <header class="header">
        受注書管理一覧
    </header>

    <!-- 戻るボタン -->
    <form action="home.jsp" method="GET">
        <button type="submit" class="back-button">ホームに戻る</button>
    </form>

    <!-- 受注書のテーブル -->
    <table class="order-table">
        <thead>
            <tr>
                <th>注文ID</th>
                <th>注文日</th>
                <th>顧客名</th>
                <th>ステータス</th>
                <th>合計金額</th>
                <th>アクション</th>
            </tr>
        </thead>
        <tbody>
            <% 
                ArrayList<Order> orderList = (ArrayList<Order>) request.getAttribute("orderList");
                if(orderList != null){
                    for (Order order : orderList) {
            %>
            <tr>
                <td><%= order.getOrderId() %></td>
                <td><%= order.getOrderDate() %></td>
                <td><%= order.getName() %></td>
                <td><%= order.getStatus() %></td>
                <td><%= order.getTotal() %></td>
                <td class="action-buttons">
                    <!-- 詳細ページボタン -->
                    <form action="orderDetails.jsp" method="GET">
                        <input type="hidden" name="orderId" value="<%= order.getOrderId() %>">
                        <button type="submit" class="action-button">詳細</button>
                    </form>
                    <!-- 編集ページボタン -->
                    <form action="editOrder.jsp" method="GET">
                        <input type="hidden" name="orderId" value="<%= order.getOrderId() %>">
                        <button type="submit" class="action-button">編集</button>
                    </form>
                </td>
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
