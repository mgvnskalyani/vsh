package com.klef.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "booking")
public class booking {
    
	@Id
	private int id;
	private String name;
	private String reason;
	private Long phno;
	private Date date;
	private String Adminname;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public Long getPhno() {
		return phno;
	}
	public void setPhno(Long phno) {
		this.phno = phno;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getAdminname() {
		return Adminname;
	}
	public void setAdminname(String Adminname) {
		this.Adminname = Adminname;
	}
	@Override
	public String toString() {
		return "booking [id=" + id + ", name=" + name + ", reason=" + reason + ", phno=" + phno + ", date=" + date
				+ ", Adminname=" + Adminname + "]";
	}

	
}
