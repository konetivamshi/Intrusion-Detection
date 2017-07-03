package com.Intrusion.Servlet;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Intrusion.Dao.DaoImplementation;
import com.Intrusion.Interface.Interfce;
import com.Intrusion.PojoClass.TlRegisterPojo;

/**
 * Servlet implementation class TlRegisterServlet
 */
@WebServlet("/TlRegisterServlet")
public class TlRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TlRegisterServlet() {
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
		   String id="IGTL";
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

		String uname=request.getParameter("name");
		String pass=request.getParameter("pass");
		String email=request.getParameter("email");
		String domain=request.getParameter("domain");
		String phone=request.getParameter("phone");
		TlRegisterPojo pojo=new TlRegisterPojo();
		              pojo.setEmpid(empid);
		              pojo.setSecreteid(secrtid);
		              pojo.setName(uname);
		              pojo.setPass(pass);
		              pojo.setEmail(email);
		              pojo.setDomain(domain);
		              pojo.setPhone(phone);
	     Interfce mi=new DaoImplementation();
	    int status= mi.Tlregister(pojo);
	    if(status>0)
	    {
	    	response.sendRedirect("index.jsp");
	    }
	}

}
