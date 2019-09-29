package com.works.dao;

import java.util.List;

import com.works.model.Order;
import com.works.model.type.OrderStatus;

public interface OrderDAO {
	
	public String createOrder(Order order);
	public List<Order> getOrders();
	public void updateOrderStatus(int orderId, OrderStatus orderStatus);
}
