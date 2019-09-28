package com.works.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.works.dao.ProductDAO;
import com.works.model.Product;
import com.works.services.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	@Override
	public List<Product> getAllProducts() {
		return productDAO.getAllProducts();
	}

	@Override
	public Product getProductById(Integer id) {
		return productDAO.getProductById(id);
	}

	@Override
	public int createProduct(Product product) {
	
		
		return productDAO.createProduct(product);
	}
	
}
