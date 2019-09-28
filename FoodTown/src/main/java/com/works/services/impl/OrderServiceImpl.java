package com.works.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.works.dao.OrderDAO;
import com.works.model.Order;
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
	
}
