package com.works.model.type;

public enum OrderStatus {

	IN_PROGRESS("In Progress"), ON_THE_WAY("On the Way"), DELIVERED("Delivered");

	public final String label;

	private OrderStatus(String label) {
		this.label = label;
	}
}
