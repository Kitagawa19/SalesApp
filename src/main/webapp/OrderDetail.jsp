<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注文情報詳細</title>
    <style>
        /* ヘッダーのスタイル */
        .header {
            background-color: #f4f4f4;
            padding: 20px;
            text-align: center;
        }

        /* 注文詳細のテーブル */
        .order-details-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        .order-details-table th, .order-details-table td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }

        /* アクションボタン */
        .action-button {
            margin-top: 10px;
        }

        /* 戻るボタン */
        .back-button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        .back-button:hover {
            background-color: #0056b3;
        }

        /* 編集・削除ボタン */
        .edit-delete-button {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
        }

        .edit-delete-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <header class="header">
        <h1>注文情報詳細</h1>
        <!-- 注文一覧に戻るボタン -->
        <form action="orderList.jsp" method="GET">
            <button type="submit" class="back-button">注文一覧に戻る</button>
        </form>
    </header>
    
    <!-- 注文詳細表示 -->
    <section>
        <h2>注文番号: ${order.orderId}</h2>
        
        <table class="order-details-table">
            <tr>
                <th>注文日</th>
                <td>${order.orderDate}</td>
            </tr>
            <tr>
                <th>顧客名</th>
                <td>${order.customerName}</td>
            </tr>
            <tr>
                <th>商品名</th>
                <td>${order.productName}</td>
            </tr>
            <tr>
                <th>数量</th>
                <td>${order.quantity}</td>
            </tr>
            <tr>
                <th>価格</th>
                <td>${order.price}</td>
            </tr>
            <tr>
                <th>合計金額</th>
                <td>${order.quantity * order.price}</td>
            </tr>
        </table>
    </section>
    
</body>
</html>
