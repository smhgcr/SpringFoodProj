package com.works.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.works.dao.OrderDAO;
import com.works.model.Order;
import com.works.util.HibernateUtil;

@Repository
public class OrderDAOImpl implements OrderDAO {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@Override
	public String createOrder(Order order) {
		
		try {
			
			Session sesi = sf.openSession();
			Transaction tr = sesi.beginTransaction();
			int i = (int) sesi.save(order);
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

}
