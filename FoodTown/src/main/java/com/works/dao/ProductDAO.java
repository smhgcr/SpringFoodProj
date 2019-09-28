package com.works.dao;

import java.util.List;

import com.works.model.Customer;
import com.works.model.Product;

public interface ProductDAO {
	
	public List<Product> getAllProducts();
	public Product getProductById(Integer id);
	public int createProduct(Product product);

}
