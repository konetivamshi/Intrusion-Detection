package com.Intrusion.PojoClass;

import java.io.Serializable;

public class UserMessagesPojoClass implements Serializable {
/**
 *author:MR.
	 * 
	 */
	private static final long serialVersionUID = 1L;
private String Username;
private String ipaddress;
private String Message;
public String getUsername() {
	return Username;
}
public void setUsername(String username) {
	Username = username;
}
public String getIpaddress() {
	return ipaddress;
}
public void setIpaddress(String ipaddress) {
	this.ipaddress = ipaddress;
}
public String getMessage() {
	return Message;
}
public void setMessage(String message) {
	Message = message;
}

	
	
}
