package com.Intrusion.Servlet;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Intrusion.Dao.DaoImplementation;
import com.Intrusion.Interface.Interfce;
import com.Intrusion.PojoClass.UserUploadPojo;

import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadBean;
import javazoom.upload.UploadFile;

/**
 * Servlet implementation class UserUpload
 */
@WebServlet("/UserUpload")
public class UserUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserUpload() {
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
		HttpSession session=request.getSession(true);
        String Empid=(String)session.getAttribute("Emp");
		Hashtable hash;
		@SuppressWarnings("rawtypes")
		Enumeration enumer;
		UploadFile upf;
		String filename="";
		String realpath=request.getRealPath("/");
		String path=realpath.substring(0,realpath.indexOf("."));
	     String opath=path+"IntrusionDetection\\WebContent\\UserUpload\\";
	        UploadBean ubean=new UploadBean();
	         ubean.setOverwrite(true);
	   try {
	        	MultipartFormDataRequest mfdr=new MultipartFormDataRequest(request);
	        	ubean.setFolderstore(opath);
	            hash=mfdr.getFiles();
				enumer=hash.elements();
			
				while(enumer.hasMoreElements())
				{
					upf=(UploadFile)enumer.nextElement();
					filename=upf.getFileName();
					opath=opath+filename;
				}
				UserUploadPojo pojo=new UserUploadPojo();
				pojo.setUsername(Empid);
				pojo.setFilename(filename);
				pojo.setPath(opath);
				Interfce mi=new DaoImplementation();
				mi.UserUpload(pojo);
				 ubean.store(mfdr);
				 response.sendRedirect("UserProjectUpload.jsp");
	            }catch(Exception e)
	            {
		        e.printStackTrace();
	   }	   }
	

}
