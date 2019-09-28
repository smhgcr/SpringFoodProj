package com.works.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "customer")
public class Customer {

	@Id
	@GeneratedValue(strategy = IDENTITY)
	private Integer cid;
	
	@Column(name = "cname", unique = true, nullable = false)
	private String cname;
	
	@Column(name = "csurname", unique = true, nullable = false)
	private String csurname;
	
	@Column(name = "cmail", unique = true, nullable = false)
	private String cmail;
	
	@Column(name = "caddress", unique = true, nullable = false)
	private String caddress;
	
	@Column(name = "cpass", unique = true, nullable = false)
	private String cpass;
	
	
	@Transient
	private String confirmpass;
	
	public String getConfirmpass() {
		return confirmpass;
	}
	public void setConfirmpass(String confirmpass) {
		this.confirmpass = confirmpass;
	}
	@Column(name = "cstatus", unique = true, nullable = true)
	private String cstatus;
	
	
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCsurname() {
		return csurname;
	}
	public void setCsurname(String csurname) {
		this.csurname = csurname;
	}
	public String getCmail() {
		return cmail;
	}
	public void setCmail(String cmail) {
		this.cmail = cmail;
	}
	public String getCaddress() {
		return caddress;
	}
	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}
	public String getCpass() {
		return cpass;
	}
	public void setCpass(String cpass) {
		this.cpass = cpass;
	}
	public String getCstatus() {
		return cstatus;
	}
	public void setCstatus(String cstatus) {
		this.cstatus = cstatus;
	}


}
