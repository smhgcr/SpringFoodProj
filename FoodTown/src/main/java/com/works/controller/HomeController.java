package com.works.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.Customer;
import com.works.model.Product;
import com.works.services.ProductService;


@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpSession sess) {
		
		Customer customer = (Customer) sess.getAttribute("loggedUser");
		Boolean orderCreated = (Boolean) sess.getAttribute("orderCreated");
		Boolean showOrderCreated = (Boolean) sess.getAttribute("showOrderCreated");
		
		List<Product> ls = productService.getAllProducts();
		model.addAttribute("productList" , ls);
		model.addAttribute("customer" , customer);
		
		if (showOrderCreated != null && showOrderCreated == true) {
			model.addAttribute("orderCreated", orderCreated);
			sess.setAttribute("showOrderCreated", false);
		}
		
		return "home";
	}
	
	
	
}
