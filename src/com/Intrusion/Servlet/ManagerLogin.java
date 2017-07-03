package com.Intrusion.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Intrusion.Dao.DaoImplementation;
import com.Intrusion.Interface.Interfce;
import com.Intrusion.PojoClass.ManagerPojo;

/**
 * Servlet implementation class ManagerLogin
 */
@WebServlet("/ManagerLogin")
public class ManagerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerLogin() {
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
		
		String username=request.getParameter("user");
		String password=request.getParameter("pass");
		ManagerPojo pojo=new ManagerPojo();
		pojo.setUsername(username);
		pojo.setPassword(password);
		Interfce mi=new DaoImplementation();
		 List<String> list=  mi.ManagerLogin(pojo);
		 System.out.println("i am list=="+list);
		 if(list.size()!=0)
		   {
			 response.sendRedirect("ManagerWelcome.jsp");  
		   }
		
		
	}

}
