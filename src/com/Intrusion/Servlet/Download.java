package com.Intrusion.Servlet;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Intrusion.Dao.DaoImplementation;
import com.Intrusion.Interface.Interfce;

/**
 * Servlet implementation class Download
 */
@WebServlet("/Download")
public class Download extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Download() {
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
		try{
			 
			 String filename=request.getParameter("fname");
		
			 
			 @SuppressWarnings("deprecation")
			String folder=request.getRealPath("/");
			 folder=folder.substring(0, folder.indexOf("."));
			 System.out.println("folder"+folder);
			 if((filename.endsWith(".jpg"))||(filename.endsWith("..png"))||(filename.endsWith(".txt")||(filename.endsWith(".gif")))){
				 folder=folder+"IntrusionDetection\\WebContent\\UploadFIles";
			 }
			 HttpSession sessn=request.getSession(true);
	          String pojo= (String)sessn.getAttribute("secreat");
				      
			 Interfce mi=new DaoImplementation();
			 mi.UpdatepayslipDownload(pojo);
			 File file=new File(folder,filename);
			// String fileName=file.getName();
			 int length = 0;
	         ServletOutputStream outStream =  response.getOutputStream();
	         ServletContext context=getServletConfig().getServletContext();
	         
	         String mimietype=context.getMimeType(folder);
	         	if(mimietype==null)
	         	{
	         		 mimietype = "application/octet-stream";

	         	}
	         	response.setContentType(mimietype);
	         	response.setContentLength((int)file.length());
	         	
	         	response.setHeader("Content-Disposition", "attachement; filename=\""+ filename+"\"");
	         	//BUFSIZE
	         	byte[] bytebuffer=new byte[(int)file.length()];
	         	
	         	 DataInputStream dis =   new DataInputStream(new FileInputStream(file));

	             while((dis != null) && ((length = dis.read(bytebuffer)) != -1 ))
	             {
	             outStream.write(bytebuffer, 0, length);
	             }
	         	dis.close();
	         	outStream.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
	}
 
	}

