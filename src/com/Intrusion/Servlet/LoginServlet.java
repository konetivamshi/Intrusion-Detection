package com.Intrusion.Servlet;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.util.List;

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
import com.Intrusion.PojoClass.userRegistrationPojoClass;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger logger = Logger.getLogger(LoginServlet.class); 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		 HttpSession session = request.getSession(true);
		InetAddress ip=InetAddress.getLocalHost();
		 String ipAddress=ip.getHostAddress().toString();
		 String hostname = ip.getHostName().toString();
		 String Empid=request.getParameter("empid");
		 System.out.println("i am empid=="+Empid);
		 String password=request.getParameter("pass");
		 session.setAttribute("Emp", Empid);
		 userRegistrationPojoClass urpc=new userRegistrationPojoClass();
		 urpc.setUsername(Empid);
		 urpc.setPassword(password);
		 Interfce mi=new DaoImplementation();
	     List<String>list=mi.UserLogin(urpc);
	
	   if(list.size()!=0)
	   {
		 response.sendRedirect("UserWelcomepage.jsp");  
	   }else if(list.size()==0)
	   {
		  
		  
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
		    	
		    	 logger.error("Alert  Something wrong with ::"+Empid+" in system name:: "+hostname+"and System ip Address::"+ipAddress);	
		    	
		    }
		    response.sendRedirect("error.jsp");
	   }
	}

}
