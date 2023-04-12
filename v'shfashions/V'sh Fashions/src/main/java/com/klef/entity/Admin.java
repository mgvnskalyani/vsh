package com.klef.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Admin")

public class Admin {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private long id;
@Column(nullable = false,length = 100)
private String name;
@Column(nullable = false,length =10)
private String mobile;
@Column(nullable = false,length = 100)
private String field;
@Column(nullable = false,length = 100)
private String password;

public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
@Override
public String toString() {
	return "Admin [id=" + id + ", name=" + name + ", mobile=" + mobile + ", field=" + field + ", password=" + password
			+ "]";
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getField() {
	return field;
}
public void setField(String field) {
	this.field = field;
}


}
