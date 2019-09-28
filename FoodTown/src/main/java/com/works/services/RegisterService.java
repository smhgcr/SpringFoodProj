package com.works.services;

import com.works.model.Customer;

public interface RegisterService {

	
	public String userInsert(Customer customer);
	public Customer getCustomerByUsername (String username);
	
	
}
