package com.works.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.works.dao.OrderDAO;
import com.works.model.Order;
import com.works.model.type.OrderStatus;
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

	@Override
	public List<Order> getOrders() {
		String queryString = " FROM Order ORDER BY createDate DESC";

		Session sesi = sf.openSession();
		return sesi.createQuery(queryString).list();
	}

	@Override
	public void updateOrderStatus(int orderId, OrderStatus orderStatus) {
		String query = "update Order o set o.orderStatus = :newStatus where o.id = :orderId";
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		sesi.createQuery(query).setParameter("newStatus", orderStatus).setParameter("orderId", orderId).executeUpdate();
		tr.commit();
	}

}
