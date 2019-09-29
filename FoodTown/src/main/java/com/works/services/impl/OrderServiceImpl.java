package com.works.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.works.dao.OrderDAO;
import com.works.model.Order;
import com.works.model.type.OrderStatus;
import com.works.services.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDAO orderDAO;

	@Override
	public String createOrder(Order order) {
		String status = orderDAO.createOrder(order);
		return status;
	}

	@Override
	public List<Order> getOrders() {
		return orderDAO.getOrders();
	}

	@Override
	public void updateOrderStatus(int orderId, OrderStatus orderStatus) {
		orderDAO.updateOrderStatus(orderId, orderStatus);
	}

}
