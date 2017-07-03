package com.Intrusion.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Intrusion.Dao.DaoImplementation;
import com.Intrusion.Interface.Interfce;
import com.Intrusion.PojoClass.UserReportPojo;

/**
 * Servlet implementation class UserDailyReport
 */
@WebServlet("/UserDailyReport")
public class UserDailyReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserDailyReport() {
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
		String date=request.getParameter("date");
		String projectname=request.getParameter("projectname");
		String username=request.getParameter("empname");
		String report=request.getParameter("report");
		UserReportPojo pojo=new UserReportPojo();
		pojo.setDate(date);
		pojo.setProjectname(projectname);
		pojo.setUsername(username);
		pojo.setReport(report);
		Interfce mi=new DaoImplementation();
	   int status= mi.UserReport(pojo);
	   if(status>0)
	   {
		   response.sendRedirect("UserReport.jsp");
	   }
		
	}

}
