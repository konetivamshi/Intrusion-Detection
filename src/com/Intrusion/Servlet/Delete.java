package com.Intrusion.Servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.Intrusion.Dao.DaoImplementation;
import com.Intrusion.Interface.Interfce;
import com.Intrusion.PojoClass.EmpSalaryPojo;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger logger = Logger.getLogger(Delete.class);   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
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
		HttpSession sessn=request.getSession(true);
        String sess= (String)sessn.getAttribute("secreat");
			      
		 Interfce mi=new DaoImplementation();
		         mi.UpdateSalaryDelete(sess);
		 
		String username=request.getParameter("uname");
		System.out.println("im am username==="+username);
		EmpSalaryPojo pojo=new EmpSalaryPojo();
		   pojo.setEmpname(username);   
	
		  int status= mi.delete(pojo);
		         System.out.println("i am status=="+status);
		     if(status==1)
		     {
		    	 response.sendRedirect("Showdetails.jsp");
		     }
		     else
		     {
		    	 response.sendRedirect("error.jsp");
		     }
	}

}
