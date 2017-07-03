package com.Intrusion.PojoClass;

import java.io.Serializable;

public class userRegistrationPojoClass implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	private int id=1;
	private String Empid;
	private String Secreatid;
	private String username;
	private String password;
	private String email;
	private String designation;
	private String phone;
	private String DateofBirth;
	private String Address;
	private String ipddress;

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getEmpid() {
		return Empid;
	}

	public void setEmpid(String empid) {
		Empid = empid;
	}
	public String getSecreatid() {
		return Secreatid;
	}

	public void setSecreatid(String secreatid) {
		Secreatid = secreatid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDateofBirth() {
		return DateofBirth;
	}
	public void setDateofBirth(String dateofBirth) {
		DateofBirth = dateofBirth;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	
	public String getIpddress() {
		return ipddress;
	}

	public void setIpddress(String ipddress) {
		this.ipddress = ipddress;
	}

   }
