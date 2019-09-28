package com.works.dao;

import com.works.model.Customer;

public interface RegisterDAO {
	
	public String userInsert(Customer customer);
	public Customer getCustomerByUsername(String username);

}
