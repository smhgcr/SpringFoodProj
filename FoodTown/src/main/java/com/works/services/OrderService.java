package com.works.services;

import java.util.List;

import com.works.model.Order;
import com.works.model.type.OrderStatus;

public interface OrderService {

	public String createOrder(Order order);
	public List<Order> getOrders();
	public void updateOrderStatus(int orderId, OrderStatus orderStatus);
}
