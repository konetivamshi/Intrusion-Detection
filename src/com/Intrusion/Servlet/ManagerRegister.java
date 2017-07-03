package com.Intrusion.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Intrusion.Dao.DaoImplementation;
import com.Intrusion.Interface.Interfce;
import com.Intrusion.PojoClass.ManagerPojo;

/**
 * Servlet implementation class ManagerRegister
 */
@WebServlet("/ManagerRegister")
public class ManagerRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerRegister() {
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
		String user=request.getParameter("name");
		String pass=request.getParameter("pass");
		String domain=request.getParameter("domain");
		String branch=request.getParameter("branch");
		//got the details
		ManagerPojo pojo=new ManagerPojo();
		pojo.setUsername(user);
		pojo.setPassword(pass);
		pojo.setDomain(domain);
		pojo.setBranch(branch);
		//providing details
		Interfce mi=new DaoImplementation();
	int status=	mi.Manregister(pojo);
		 if(status>0)
		 {
		response.sendRedirect("manager.jsp"); 
		 }
	}

}
