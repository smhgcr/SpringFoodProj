package com.works.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.works.model.Basket;
import com.works.model.BasketItem;
import com.works.model.Customer;
import com.works.model.Order;
import com.works.model.Product;
import com.works.services.OrderService;
import com.works.services.ProductService;

@Controller
public class BasketController {

	@Autowired
	private ProductService productService;

	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value = "/basket/add-product", method = RequestMethod.POST)
	public String addProduct(@RequestParam("amount") int amount, HttpSession sess, Model model) {
		
		Customer customer = (Customer) sess.getAttribute("loggedUser");
		String result = "";
		
		if (customer != null) {
			Product currentProduct = (Product) sess.getAttribute("currentProduct");

			Basket basket = (Basket) sess.getAttribute("basket");
			if (basket == null) {
				basket = new Basket();
			}

			List<BasketItem> bil = basket.getBasketItemList();

			BasketItem bi = new BasketItem();
			bi.setAmount(amount);
			bi.setProduct(currentProduct);
			bi.setBasket(basket);

			bil.add(bi);

			sess.setAttribute("basket", basket);
			model.addAttribute("basket", basket);
			model.addAttribute("orderCreated", false);

			result = "order";
		} else {
			result = "redirect:/userlogin";
		}

		
		return result;
	}
	
	@RequestMapping(value = "/create-order", method = RequestMethod.GET)
	public String createOrder(HttpSession sess, Model model) {

		try {
			Customer customer = (Customer) sess.getAttribute("loggedUser");

			Basket currentBasket = (Basket) sess.getAttribute("basket");
			currentBasket.setTotalPrice(currentBasket.getTotalPrice());

			Order newOrder = new Order(currentBasket); 
			newOrder.setCustomer(customer);
			
			orderService.createOrder(newOrder);
			
			model.addAttribute("orderCreated", true);
		} catch (Exception e) {
			model.addAttribute("orderCreated", false);
			e.printStackTrace();
		}
		
		return "order";
	}

}