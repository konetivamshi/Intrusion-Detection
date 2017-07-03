package com.Intrusion.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Intrusion.Dao.DaoImplementation;
import com.Intrusion.Interface.Interfce;
import com.Intrusion.PojoClass.MeetingReportPojo;

/**
 * Servlet implementation class Meeting
 */
@WebServlet("/MeetingReport")
public class MeetingReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MeetingReport() {
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
		 mi.UpdateMeetingReport(sess);
		 
		String date=request.getParameter("date");
		String project=request.getParameter("projectname");
		String team=request.getParameter("team");
		String module=request.getParameter("module");
		String queries=request.getParameter("queries");
		String conclusion=request.getParameter("conclusion");
	    MeetingReportPojo pojo=new MeetingReportPojo();
	    pojo.setDate(date);
	    pojo.setProjectname(project);
	    pojo.setTeam(team);
	    pojo.setModule(module);
	    pojo.setQueries(queries);
	    pojo.setConclusion(conclusion);
		
	int status=	mi.Meeting(pojo);
	if(status>0)
	{
		response.sendRedirect("MeetingsReport.jsp");
	}
	}

}
