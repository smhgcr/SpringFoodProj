package com.works.controller.admin;

import java.util.EnumMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.works.model.Order;
import com.works.model.type.OrderStatus;
import com.works.services.OrderService;

@Controller
@RequestMapping("/admin")
public class OrderController {

	@Autowired
	private OrderService orderService;

	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public String order(Model model) {

		prepareOrderPage(model);

		return "admin/customerOrders";
	}
	
	@RequestMapping(value = "/order", method = RequestMethod.POST)
	public String updateOrderStatus(Order orderToUpdate, Model model) {

		orderService.updateOrderStatus(orderToUpdate.getId(), orderToUpdate.getOrderStatus());
		
		prepareOrderPage(model);

		return "redirect:/admin/order";
	}
	
	private void prepareOrderPage(Model model) {
		List<Order> orderList = orderService.getOrders();
		model.addAttribute("orderList", orderList);
		model.addAttribute("orderToUpdate", new Order());
		
		Map<OrderStatus, String> statuslist = new EnumMap<OrderStatus, String>(OrderStatus.class);
		statuslist.put(OrderStatus.IN_PROGRESS, OrderStatus.IN_PROGRESS.label);
		statuslist.put(OrderStatus.ON_THE_WAY, OrderStatus.ON_THE_WAY.label);
		statuslist.put(OrderStatus.DELIVERED, OrderStatus.DELIVERED.label);
		model.addAttribute("statusList", statuslist);
	}

}
