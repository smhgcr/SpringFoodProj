package com.works.model;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.works.model.type.OrderStatus;

@Entity
@Table(name = "torder")
public class Order {
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private int id;
	
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "BASKET_ID")
	private Basket basket;
    
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "create_date", updatable = false)
	private Date createDate;
    
    @Enumerated(EnumType.STRING)
    @Column(name = "order_status")
	private OrderStatus orderStatus;
    
    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Customer customer;
	
	
	public Order(Basket basket) {
		super();
		this.basket = basket;
		this.createDate = new Date();
		this.orderStatus = OrderStatus.IN_PROGRESS;
	}
	
	public Order() {
		super();
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public Basket getBasket() {
		return basket;
	}
	public void setBasket(Basket basket) {
		this.basket = basket;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public OrderStatus getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(OrderStatus orderStatus) {
		this.orderStatus = orderStatus;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	

}
