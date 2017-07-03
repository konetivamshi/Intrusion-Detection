package com.Intrusion.Servlet;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Intrusion.Dao.DaoImplementation;
import com.Intrusion.Interface.Interfce;
import com.Intrusion.PojoClass.ManagerUploadPojo;

import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadFile;

/**
 * Servlet implementation class ManagerAllocation
 */
@WebServlet("/ManagerAllocation")
public class ManagerAllocation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerAllocation() {
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
		String domain,path;
		
	       @SuppressWarnings("rawtypes")
		Hashtable hash;
			@SuppressWarnings("rawtypes")
			Enumeration enumer;
			UploadFile upf;
			String filename="";
			@SuppressWarnings("deprecation")
			String realpath=request.getRealPath("/");
			
			path=realpath.substring(0, realpath.indexOf("."));
			
			path=path+"IntrusionDetection\\WebContent\\ManagerUpload";
			
			javazoom.upload.UploadBean upb=new javazoom.upload.UploadBean();
			
			upb.setOverwrite(true);
			try {
				MultipartFormDataRequest mpfdr=new MultipartFormDataRequest(request);
				upb.setFolderstore(path);
			
				domain=mpfdr.getParameter("domain");
				hash=mpfdr.getFiles();
				enumer=hash.elements();
				
				while(enumer.hasMoreElements())
				     {
					upf=(UploadFile)enumer.nextElement();
					filename=upf.getFileName();
					path=path+"/"+filename;
				     }
			ManagerUploadPojo pojo=new ManagerUploadPojo();
			        pojo.setFilename(filename);
			        pojo.setPath(path);
			        pojo.setDomain(domain);
				    	upb.store(mpfdr);
				    	
				    	
				Interfce mi=new DaoImplementation();
				
			int status=	mi.ManagerUpload(pojo);
			
			if(status==1)
			{
				
			response.sendRedirect("error.jsp");	
			}
			else
			{
				response.sendRedirect("Projectdetails.jsp");
			}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			

		
		
		
		
		
	}

}
