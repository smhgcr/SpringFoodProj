package com.works.services;

import java.util.List;

import com.works.model.Product;

public interface ProductService {

	public List<Product> getAllProducts();
	public Product getProductById(Integer id);
	public int createProduct(Product product);
	
}
