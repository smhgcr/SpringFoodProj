package com.works.dao.impl;

import java.io.Serializable;

import javax.persistence.TypedQuery;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.works.dao.RegisterDAO;
import com.works.model.Customer;
import com.works.util.HibernateUtil;

@Repository
public class RegisterDAOImpl implements RegisterDAO , Serializable {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@Override
	public String userInsert(Customer customer) {
		
		try {
			
			Session sesi = sf.openSession();
			Transaction tr = sesi.beginTransaction();
			int i = (int) sesi.save(customer);
			tr.commit();
			
			if(i > 0) {
				return "Islem basarili";
			}
			
			
			
		} catch (Exception e) {
			
			System.err.println("Hata " + e);
			e.printStackTrace();
		}
		
		return "Islem basarisiz!";

	}

	@Override
	public Customer getCustomerByUsername(String cmail) {
		
		String queryString= " FROM Customer c WHERE c.cmail = :cmail";
		
		Session sesi = sf.openSession();
		return (Customer) sesi.createQuery(queryString)
				.setParameter("cmail", cmail)
				.getSingleResult();
		
		
	
	}

}
