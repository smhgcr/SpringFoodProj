package com.works.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.Customer;

@Controller
public class SiteController {

	@RequestMapping(value = "/css" , method = RequestMethod.GET)
	public String css() {
		
		return "inc/css";
	}
	
	@RequestMapping(value = "/js" , method = RequestMethod.GET)
	public String js() {
		
		return "inc/js";
	}
	
	@RequestMapping(value = "/header" , method = RequestMethod.GET)
	public String header(HttpSession sess, Model model) {
		Customer customer = (Customer) sess.getAttribute("loggedUser");
		model.addAttribute("customer", customer);
		return "inc/header";
	}
	
	@RequestMapping(value = "/footer" , method = RequestMethod.GET)
	public String footer() {
		
		return "inc/footer";
	}
}
