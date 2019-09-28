package com.works.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.works.dao.RegisterDAO;
import com.works.model.Customer;
import com.works.services.RegisterService;

@Service("registerService")
public class RegisterServiceImpl implements RegisterService {

	@Autowired(required=true)
	private RegisterDAO registerDAO;
	
	
	@Override
	public String userInsert(Customer customer) {
		
		String status = registerDAO.userInsert(customer);
		
		return status; 
	}


	@Override
	public Customer getCustomerByUsername(String username) {
		
		
		
		return registerDAO.getCustomerByUsername(username);
	}
	

	
}
