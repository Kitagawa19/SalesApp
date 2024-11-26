package salesapp;

public class Order {
    private String orderId;
    private String orderDate;
    private String name;
    private String status;
    private String total;

    // コンストラクタ、ゲッター、セッターを定義
    public Order(String orderId, String orderDate, String name, String status, String total) {
        this.orderId = orderId;
        this.orderDate = orderDate;
        this.name = name;
        this.status = status;
        this.total = total;
    }

    public String getOrderId() {
        return orderId;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public String getName() {
        return name;
    }

    public String getStatus() {
        return status;
    }

    public String getTotal() {
        return total;
    }
}

