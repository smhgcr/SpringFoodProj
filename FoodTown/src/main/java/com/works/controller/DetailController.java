package com.works.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.BasketItem;
import com.works.model.Product;
import com.works.services.ProductService;

@Controller
public class DetailController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/detail/{id}" , method = RequestMethod.GET )
	public String productDetail(Model model, @PathVariable int id, HttpSession sess) {
		
		Product product = productService.getProductById(id);
		
		sess.setAttribute("currentProduct", product);
		model.addAttribute("product", product);
		
		
		return "detail";
	}
}
