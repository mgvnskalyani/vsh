package com.klef.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User")

public class User {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private long id;
@Column(nullable = false,length = 200)
private String name;
@Column(nullable = false,length = 10)
private String password;
@Column(nullable = false,length =10)
private String mobile;
@Column(nullable = false,length = 20)
private String place;
@Column(nullable = false,length = 10)
private String cause;
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
public String getPlace() {
	return place;
}
public void setPlace(String place) {
	this.place = place;
}
public String getCause() {
	return cause;
}
public void setCause(String cause) {
	this.cause = cause;
}
@Override
public String toString() {
	return "User [id=" + id + ", password=" + password + ", name=" + name + ", mobile=" + mobile + ", place=" + place
			+ ", cause=" + cause + "]";
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

}
