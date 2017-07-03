package com.Intrusion.Servlet;

import java.io.IOException;
import java.net.InetAddress;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Intrusion.Dao.DaoImplementation;
import com.Intrusion.Interface.Interfce;
import com.Intrusion.PojoClass.userRegistrationPojoClass;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
           String id="IGT";
           String number="1234567890";
           String secreatid="IGATE";
           Random ran=new Random();
               char c1=number.charAt(ran.nextInt(number.length()));
               char c2=number.charAt(ran.nextInt(number.length()));
               String empid=id+c1+c2;
               Random ran1=new Random();
               char c3=number.charAt(ran.nextInt(number.length()));
               char c4=number.charAt(ran.nextInt(number.length()));
               char c5=number.charAt(ran.nextInt(number.length()));
               String secrtid=secreatid+c3+c4+c5;
		    InetAddress ip=InetAddress.getLocalHost();
		    String ipAddress=ip.getHostName();
	    	String username=request.getParameter("Username");
		    System.out.println("iam username=="+username);
		    String password=request.getParameter("Password");
		    String email=request.getParameter("email");
		    String designation=request.getParameter("designation");
		    String phone=request.getParameter("phone");
		    String dob=request.getParameter("dob");
		    String address=request.getParameter("address");
		    userRegistrationPojoClass urps=new userRegistrationPojoClass();
		        urps.setEmpid(empid);
		        urps.setSecreatid(secrtid);
		        urps.setUsername(username);
	    	    urps.setPassword(password);
		        urps.setEmail(email);
		        urps.setDesignation(designation);
		        urps.setPhone(phone);
		        urps.setDateofBirth(dob);
		        urps.setAddress(address);
		        urps.setIpddress(ipAddress);
		 Interfce mi=new DaoImplementation();
		int status= mi.UserRegistration(urps);
		System.out.println("i am status=="+status);
		 if(status>0)
		 {
		response.sendRedirect("index.jsp"); 
		 }
	}

}
