package com.works.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.Product;
import com.works.services.ProductService;
import com.works.util.HibernateUtil;
import com.works.util.Util;

@Controller
@RequestMapping("/admin")
public class ProductController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();
	String statu="";
	int editID = 0;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String product(Model model ) {
		/*
		 * Session sesi = sf.openSession(); List<Product> ls =
		 * sesi.createQuery("from Product ORDER BY pid DESC").list();
		 */
		List<Product> ls = productService.getAllProducts();
		model.addAttribute("productList" , ls);
		
		return ("admin/product");
	}

	@RequestMapping(value = "/productInsert" , method = RequestMethod.POST)
	public String productInsert(Product product) {
		
		int id = productService.createProduct(product);
		
		
		if(id>0) {
			
		statu = "Islem basarili";	
		
		}
					
		return "redirect:/admin/product";
	}
	
	//DELETE
	@RequestMapping(value = "/delete/{id}" , method = RequestMethod.GET)
	public String productDelete(@PathVariable int id) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Product product = sesi.load(Product.class, id);
		sesi.delete(product);
		tr.commit();
		
		return "redirect:/admin/product";
	}
	
	//UPDATE
	@RequestMapping(value = "/edit/{id}" , method = RequestMethod.GET)
	public String productInsert(@PathVariable int id, Model model) {
		editID = id;
		Session sesi = sf.openSession();
		Product product = sesi.load(Product.class, editID);
		model.addAttribute("product" , product);
		
		return "admin/product"; 
	}
	@RequestMapping(value = "/productEdit" , method = RequestMethod.POST)
	public String productEdit(Product product) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		product.setPid(editID);
		sesi.update(product);
		tr.commit();
		
		return "redirect:/admin/product";
	}
	
	
	
}
