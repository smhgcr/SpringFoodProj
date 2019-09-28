package com.works.controller;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.Customer;
import com.works.services.RegisterService;
import com.works.util.HibernateUtil;

@Controller
@RequestMapping("/register")
public class RegisterController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();
	String statu = "";
	
	@Autowired(required=true)
	private RegisterService registerService;
	
	
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) {
		
		model.addAttribute("statu" , statu);
		
		return "register";
	}
	
	@RequestMapping(value = "/userInsert" , method = RequestMethod.POST)
	public String userInsert(Customer customer) {
	
		
		if(customer.getCpass().equals(customer.getConfirmpass())) {
			
			customer.setCstatus("user");
			String reg = registerService.userInsert(customer);
			statu = "Kayit basarili";
			return "redirect:/";
		}else {
			
			statu = "Kayit Basarisiz, Lutfen bilgileri kontrol edin";
						
		}
		
		return "redirect:/register";
		
	}

}
