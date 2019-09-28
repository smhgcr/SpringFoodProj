package com.works.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.works.dao.ProductDAO;
import com.works.model.Product;
import com.works.util.HibernateUtil;

@Repository
public class ProductDAOImpl implements ProductDAO {

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@Override
	public List<Product> getAllProducts() {
		String queryString = " FROM Product ORDER BY pid DESC";

		Session sesi = sf.openSession();
		return sesi.createQuery(queryString).list();
				
	}

	@Override
	public Product getProductById(Integer id) {
		String queryString = " FROM Product p WHERE p.pid = :id";

		Session sesi = sf.openSession();
		return (Product) sesi.createQuery(queryString).setParameter("id", id).getSingleResult();
	}

	@Override
	public int createProduct(Product product) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		int id = (Integer)sesi.save(product);
		tr.commit();
		
		return id;
	}

}
