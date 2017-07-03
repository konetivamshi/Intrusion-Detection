package com.Intrusion.Servlet;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.util.List;
import java.util.Random;

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
import com.Intrusion.PojoClass.TlBehaviour;
import com.Intrusion.PojoClass.TlRegisterPojo;

/**
 * Servlet implementation class TlLoginServlet
 */
@WebServlet("/TlLoginServlet")
public class TlLoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	static Logger logger = Logger.getLogger(TlLoginServlet.class);   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TlLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Log4JInitServlet is initializing log4j");
		String log4jLocation = config.getInitParameter("log4j-properties-location");
		
       System.out.println("i am logjLocation=="+log4jLocation);
		ServletContext sc = config.getServletContext();

		if (log4jLocation == null) {
			System.err.println("*** No log4j-properties-location init param, so initializing log4j with BasicConfigurator");
			BasicConfigurator.configure();
		} else {
			String webAppPath = sc.getRealPath("/");
			String log4jProp = webAppPath + log4jLocation;
			System.out.println("i am path==="+log4jProp);
			File yoMamaYesThisSaysYoMama = new File(log4jProp);
			if (yoMamaYesThisSaysYoMama.exists()) {
				System.out.println("Initializing log4j with: " + log4jProp);
				PropertyConfigurator.configure(log4jProp);
			} else {
				System.err.println("*** " + log4jProp + " file not found, so initializing log4j with BasicConfigurator");
				BasicConfigurator.configure();
			}
		}
		super.init(config);
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
String productview="0",salaryDetailsView="0",payslipdownload="0",salarydelete="0",projectAllocation="0",MeetingsView="0",UserReportView="0",UserModulesView="0";
		// TODO Auto-generated method stub
// random number
  String number="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
   Random ran1=new Random();
    char c1=number.charAt(ran1.nextInt(number.length()));
    char c2=number.charAt(ran1.nextInt(number.length()));
    char c3=number.charAt(ran1.nextInt(number.length()));
    char c4=number.charAt(ran1.nextInt(number.length()));
    char c5=number.charAt(ran1.nextInt(number.length()));
     String secrtid=""+c1+c2+c3+c4+c5;
     //session
      HttpSession seson=request.getSession(true);
      seson.setAttribute("secreat", secrtid);
      
      //ip address
		InetAddress ip=InetAddress.getLocalHost();
		 String ipAddress=ip.getHostAddress().toString();
		 String hostname = ip.getHostName().toString();
		 
		String username=request.getParameter("name");
	    String password=request.getParameter("pass");
	    TlRegisterPojo pojo=new TlRegisterPojo();
	      pojo.setName(username);
	      pojo.setPass(password);
	      Interfce mi=new DaoImplementation();
	      List<String> list=  mi.Tllogin(pojo);
	      if(list.size()!=0)
		   {
	    	  TlBehaviour bean=new TlBehaviour();
	    	  bean.setEmpid(username);
	    	  bean.setDummyname(secrtid);
	    	  bean.setProjectView(productview);
	    	  bean.setSalaryDetailsView(salaryDetailsView);
	    	  bean.setPaySlipDownload(payslipdownload);
	    	  bean.setSalaryDelete(salarydelete);
	    	  bean.setProjectAllocation(projectAllocation);
	    	  bean.setMeetingsView(MeetingsView);
	    	  bean.setUserReportView(UserReportView);
	    	  bean.setUserModulesView(UserModulesView);
	    	  
	    	  mi.TlBehaviour(bean);
			   response.sendRedirect("homepage.jsp");  
		   }else if(list.size()==0)
		   {
			  
			   HttpSession session = request.getSession(true);
			    response.setContentType("text/html");
			    
			    Integer accessCount = new Integer(0);;
			    if (session.isNew()) {
			     System.out.println("i am new session baby");
			    } else {
			      
			      Integer oldAccessCount = (Integer)session.getAttribute("accessCount"); 
			      if (oldAccessCount != null) {
			        accessCount = new Integer(oldAccessCount.intValue() + 1);
			      }
			    }
			    session.setAttribute("accessCount", accessCount); 
			    
			     System.out.println("i am mahesh session baby"+accessCount);

			    if(accessCount>1)
			    {
			    	
			    	 logger.error("Alert  Something wrong with ::"+username+" in system name:: "+hostname+"and System ip Address::"+ipAddress);	
			    	
			    }
			    response.sendRedirect("error.jsp");
		   }
	
	}

}
