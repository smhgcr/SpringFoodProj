package com.works.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.works.model.Customer;
import com.works.services.RegisterService;

@Controller
public class UserLoginController {
	
	@Autowired
	private RegisterService registerService;
	
	@RequestMapping(value = "/userlogin" , method = RequestMethod.GET)
	public ModelAndView loginPage() {
		
		ModelAndView mav = new ModelAndView("userlogin");
	    mav.addObject("newCustomer", new Customer());
		return mav;
	}

	
	@RequestMapping(value = "/login" , method = RequestMethod.POST)
	public String login(@ModelAttribute("newCustomer") Customer customer,Model model, HttpSession sess) {
		
		String result = "";
		
		try {
			Customer recievedCustomer = registerService.getCustomerByUsername(customer.getCmail());
			
			if (recievedCustomer != null && customer.getCpass().equals(recievedCustomer.getCpass())) {
				model.addAttribute("loggedIn", true);
				sess.setAttribute("loggedUser", recievedCustomer);
				result = "redirect:/";
			} else {
				model.addAttribute("loggedIn", false);
				sess.setAttribute("loggedUser", null);
				result = "userlogin";
			}
			
			model.addAttribute("customer", recievedCustomer);
		} catch (Exception e) {
			model.addAttribute("loggedIn", false);
			sess.setAttribute("loggedUser", null);
			result = "userlogin";
			e.printStackTrace();
		}
		
		return result;
		
	}
	
	@RequestMapping(value = "/logout" , method = RequestMethod.GET)
	public String logout(Model model, HttpSession sess) {
		Customer customer = (Customer) sess.getAttribute("loggedUser");
		if (customer != null) {
			sess.setAttribute("loggedUser", null);
		}
		
		return "redirect:/";
	}
	

}
