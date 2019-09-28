package com.works.model;

import static javax.persistence.GenerationType.IDENTITY;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "basket")
public class Basket {

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private int id;
	
	@OneToMany(mappedBy="basket", cascade = CascadeType.ALL)
	private List<BasketItem> basketItemList = new ArrayList<>();
	
	@Column(name = "TOTAL_PRICE", nullable = true, precision = 10)
	private BigDecimal totalPrice;
	
	public List<BasketItem> getBasketItemList() {
		return basketItemList;
	}

	public void setBasketItemList(List<BasketItem> basketItemList) {
		this.basketItemList = basketItemList;
	}

	public BigDecimal getTotalPrice() {
		totalPrice = BigDecimal.ZERO;
		
		for (BasketItem bi : basketItemList) {
			totalPrice = totalPrice.add(bi.getTotalPrice());
		}
		
		return totalPrice;
	}
	
	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
}
