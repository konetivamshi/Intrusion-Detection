package com.Intrusion.Servlet;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
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
import com.Intrusion.PojoClass.SplitPojo;

import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadBean;
import javazoom.upload.UploadFile;

/**
 * Servlet implementation class Split
 */
@WebServlet("/Split")
public class Split extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Split() {
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
		Hashtable hash;
		@SuppressWarnings("rawtypes")
		Enumeration enumer;
		UploadFile upf;
		String filename="";
		String split="";
		String split1="";
		String split2="";
		String realpath=request.getRealPath("/");
		     String path=realpath.substring(0,realpath.indexOf("."));
		 String   opath=path+"IntrusionDetection\\WebContent\\originalfile\\";
		 String    spath=path+"IntrusionDetection\\WebContent\\split\\";
		 HttpSession sessn=request.getSession(true);
         String sess= (String)sessn.getAttribute("secreat");
			      
		 Interfce mi=new DaoImplementation();
		 mi.UpdateProjectAllocation(sess);
		 
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
					
					split=spath+"1"+filename;
					split1=spath+"2"+filename;
					split2=spath+"3"+filename;
					System.out.println("i am split path"+spath);
					
				}
				SplitPojo pojo=new SplitPojo();
				pojo.setPath1(split);
				pojo.setFilename1("1"+filename);
				pojo.setPath2(split1);
				pojo.setFilename2("2"+filename);
				pojo.setPath3(split2);
				pojo.setFilename3("3"+filename);
				
				     mi.Tlsplit(pojo);
				     ubean.store(mfdr);
				
						
					//Prepare output stream for 
					//new pdf file after split process.
		            OutputStream outputStream1 = 
		            		new FileOutputStream(split);
		            OutputStream outputStream2 = 
		            		new FileOutputStream(split1);
		            OutputStream outputStream3 = 
		            		new FileOutputStream(split2);
		            
		            //call method to split pdf file.
		            PDFSplitExample.splitPdfFile(new FileInputStream(opath),
		            		outputStream1, 1, 3);    
		            PDFSplitExample.splitPdfFile(new FileInputStream(opath),
		            		outputStream2, 4, 6);  
		            PDFSplitExample.splitPdfFile(new FileInputStream(opath),
		            		outputStream3, 7, 10);
		            System.out.println("Pdf file splitted successfully.");
				    response.sendRedirect("projectallocation.jsp");
	}catch(Exception ec)
	   {
		ec.printStackTrace();
	   }
	}
	}