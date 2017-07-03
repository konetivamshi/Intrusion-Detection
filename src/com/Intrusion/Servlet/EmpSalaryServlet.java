package com.Intrusion.Servlet;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.dialect.lock.UpdateLockingStrategy;

import com.Intrusion.Dao.DaoImplementation;
import com.Intrusion.Interface.Interfce;
import com.Intrusion.PojoClass.EmpSalaryPojo;

import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadBean;
import javazoom.upload.UploadException;
import javazoom.upload.UploadFile;

/**
 * Servlet implementation class EmpSalaryServlet
 */
@WebServlet("/EmpSalaryServlet")
public class EmpSalaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpSalaryServlet() {
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
		String empname="",empid="",empsalary="",empmonth="";
		Hashtable hash;
		@SuppressWarnings("rawtypes")
		Enumeration enumer;
		UploadFile upf;
		String filename="";
		String realpath=request.getRealPath("/");
		     String path=realpath.substring(0,realpath.indexOf("."));
		     path=path+"IntrusionDetection\\WebContent\\UploadFIles\\";
	        UploadBean ubean=new UploadBean();
	         ubean.setOverwrite(true);
	   try {
	        	MultipartFormDataRequest mfdr=new MultipartFormDataRequest(request);
	        	ubean.setFolderstore(path);
	        	 empname=mfdr.getParameter("Ename");
	        	 empid=mfdr.getParameter("Eid");
	        	 empsalary=mfdr.getParameter("ESal");
	            empmonth=mfdr.getParameter("Emon");
	            hash=mfdr.getFiles();
				enumer=hash.elements();
				while(enumer.hasMoreElements())
				{
					upf=(UploadFile)enumer.nextElement();
					filename=upf.getFileName();
					path=path+"/"+filename;
				}
				EmpSalaryPojo pojo=new EmpSalaryPojo();
				pojo.setEmpname(empname);
				pojo.setEmpid(empid);
				pojo.setSalary(empsalary);
				pojo.setMonth(empmonth);
				pojo.setPayslip(filename);
				ubean.store(mfdr);
				
	  Interfce in=new DaoImplementation();
	 int  status=     in.EmpSalaryInsert(pojo);
	    if(status>=1)
	    {
	    	response.sendRedirect("insertSuccess.jsp");
	    }else
	    {
	    	response.sendRedirect("error.jsp");
	    }
	   } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
