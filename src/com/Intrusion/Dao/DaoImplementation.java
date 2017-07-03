package com.Intrusion.Dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.Intrusion.Connection.ConnectionImpl;
import com.Intrusion.Interface.Interfce;
import com.Intrusion.PojoClass.EmpSalaryPojo;
import com.Intrusion.PojoClass.ManagerPojo;
import com.Intrusion.PojoClass.ManagerUploadPojo;
import com.Intrusion.PojoClass.MeetingReportPojo;
import com.Intrusion.PojoClass.SplitPojo;
import com.Intrusion.PojoClass.TlBehaviour;
import com.Intrusion.PojoClass.TlRegisterPojo;
import com.Intrusion.PojoClass.UserReportPojo;
import com.Intrusion.PojoClass.UserUploadPojo;
import com.Intrusion.PojoClass.userRegistrationPojoClass;

public class DaoImplementation implements Interfce{


	public static DaoImplementation dao;
	Transaction transaction;
	Query query;
	List<String> list=new ArrayList();
	Iterator<String> iterator;
	
	
	
	Session session=ConnectionImpl.getSession();
	
	@Override  
	public int UserRegistration(userRegistrationPojoClass urpc) {
		// TODO Auto-generated method stub
		int status=0;
		
		transaction=session.beginTransaction();
		 status=(Integer)session.save(urpc);
		 
		 transaction.commit();
		return status;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<String> UserLogin(userRegistrationPojoClass urpc) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("from userRegistrationPojoClass where Empid= :emp and password= :pwd ");
		query.setParameter("emp", urpc.getUsername());
		query.setParameter("pwd", urpc.getPassword());
		list= query.list();
		transaction.commit();
		System.out.println("iam list==="+list);
		return list;
	}
	@Override
	public int EmpSalaryInsert(EmpSalaryPojo pojo) {
		// TODO Auto-generated method stub
		int status=0;
		transaction=session.beginTransaction();
		status=(Integer)session.save(pojo);
		transaction.commit();
		return status;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<String> EmpLogin(TlRegisterPojo urpc) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("from TlRegisterPojo where secreteid= :seclogin and pass= :pwd ");
		query.setParameter("seclogin", urpc.getSecreteid()) ;
		query.setParameter("pwd", urpc.getPass());
		list=query.list();
	    transaction.commit();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<String> getDetails(EmpSalaryPojo pojo) {
		// TODO Auto-generated method stub
		List<String> li=new ArrayList();
		transaction=session.beginTransaction();
		query=  session.createQuery("from EmpSalaryPojo ");
		list=query.list();
		
		Iterator itr=list.iterator();
		while(itr.hasNext())
		{
			EmpSalaryPojo	poj=(EmpSalaryPojo)itr.next();
		     String name= poj.getEmpname();
		     String empid=poj.getEmpid();
		     String salary=poj.getSalary();
		     String month=poj.getMonth();
		     String filename=poj.getPayslip();
		     li.add(name);
		     li.add(empid);
		     li.add(salary);
		     li.add(month);
		     li.add(filename);
		
		}
		transaction.commit();
		return li;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<String> getEmployeeDetails(userRegistrationPojoClass urpc) {
		// TODO Auto-generated method stub
		List<String> li=new ArrayList();
		transaction=session.beginTransaction();
		query=session.createQuery("from userRegistrationPojoClass");
		list=query.list();
		Iterator itr =list.iterator();
		while(itr.hasNext())
		{
		userRegistrationPojoClass pojo=(userRegistrationPojoClass)itr.next();
	    String empid=pojo.getEmpid();
	    String secreatid=pojo.getSecreatid();
	    String username=pojo.getUsername();
	    String password=pojo.getPassword();
	    String email=pojo.getEmail();
	    String designation=pojo.getDesignation();
	    String phone=pojo.getPhone();
	    String dob=	pojo.getDateofBirth();
	    String address=	pojo.getAddress();
	    String ipaddress=pojo.getIpddress();
	    li.add(empid);li.add(secreatid);li.add(username);li.add(password);li.add(email);li.add(designation);
	    li.add(phone);  li.add(dob);  li.add(address); li.add(ipaddress);
	    
		}
		transaction.commit();
		return li;
		
	}
	@Override
	public int delete(EmpSalaryPojo pojo) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("delete from EmpSalaryPojo emp where emp.empname=:name");
		query.setParameter("name", pojo.getEmpname());
	     int res = query.executeUpdate();
		return res ;
	}
	@Override
	public int Manregister(ManagerPojo pojo) {
		// TODO Auto-generated method stub
		int status=0;
		transaction=session.beginTransaction();
		status=(Integer)session.save(pojo);
		transaction.commit();
		return status;
		
	}
	@Override
	public List<String> ManagerLogin(ManagerPojo pojo) {
		// TODO Auto-generated method stub
	
		transaction=session.beginTransaction();
		query=session.createQuery("from ManagerPojo where username= :user and password= :pwd");
		query.setParameter("user", pojo.getUsername());
		query.setParameter("pwd", pojo.getPassword());
		list=query.list();
		System.out.println("i am list dao=="+list);
		transaction.commit();
		return list;
	}
	@Override
	public int ManagerUpload(ManagerUploadPojo pojo) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		int status=(Integer)session.save(pojo);
		transaction.commit();
		return status;
	}
	@Override
	public List<String> getProect() {
		// TODO Auto-generated method stub
		
		transaction=session.beginTransaction();
		query=session.createQuery("from ManagerUploadPojo ");
		list=query.list();
		System.out.println("i ma getproject list==="+list);
		transaction.commit();
		return list;
	}
	@Override
	public int Meeting(MeetingReportPojo pojo) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
	     int status=(Integer)session.save(pojo);
	     transaction.commit();
		return status;
	}
	@Override
	public int Tlregister(TlRegisterPojo pojo) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		int status=(Integer)session.save(pojo);
		transaction.commit();
		return status;
	}
	@Override
	public List<String> Tllogin(TlRegisterPojo pojo) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("from TlRegisterPojo where name=:user and pass=:pasword");
		query.setParameter("user", pojo.getName());
		query.setParameter("pasword", pojo.getPass());
		list=query.list();
		transaction.commit();
		return list;
	}
	@Override
	public int Tlsplit(SplitPojo pojo) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		int status=(Integer)session.save(pojo);
		transaction.commit();
		return status;
	}
	@Override
	public List<String> getUserProject() {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("from SplitPojo");
		list=query.list();
		transaction.commit();
		return list;
	}
	@Override
	public int UserUpload(UserUploadPojo pojo) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		int status=(Integer)session.save(pojo);
		transaction.commit();
		return status;
	}
	@Override
	public int UserReport(UserReportPojo pojo) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		int status=(Integer)session.save(pojo);
		transaction.commit();
		return status;
	}
	@Override
	public List<String> UserModulesView() {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		   query=session.createQuery("from UserUploadPojo");
		   list=query.list();
		   transaction.commit();
		return list;
	}
	@Override
	public List<String> UserReportView() {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("from UserReportPojo");
		list=query.list();
		transaction.commit();
		return list;
	}
	@Override
	public int TlBehaviour(TlBehaviour pojo) {
		// TODO Auto-generated method stub
     transaction=session.beginTransaction();
     int status=(Integer)session.save(pojo);
     transaction.commit();
     return status;
	}
	@Override
	public int UpdateProductView(String pojo) {
		// TODO Auto-generated method stub
	transaction=session.beginTransaction();
	query = session.createQuery("update TlBehaviour set projectView = :proview  " + "where dummyname = :dummy");
	query.setParameter("proview", "1");
	query.setParameter("dummy", pojo);
	int status=query.executeUpdate();
		transaction.commit();
		return status;
	}
	@Override
	public int UpdateSalaryDetailsView(String update) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("update TlBehaviour set salaryDetailsView = :salaryview  " + "where dummyname = :dummyn");
		query.setParameter("salaryview", "1");
		query.setParameter("dummyn", update);
		int status=query.executeUpdate();
		transaction.commit();
		return status;
	}
	@Override
	public int UpdatepayslipDownload(String update) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("update TlBehaviour set paySlipDownload = :paydwn  " + "where dummyname = :dummyna");
		query.setParameter("paydwn", "1");
		query.setParameter("dummyna", update);
		int status=query.executeUpdate();
		transaction.commit();
		return status;
	}
	@Override
	public int UpdateSalaryDelete(String update) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("update TlBehaviour set salaryDelete = :saldel  " + "where dummyname = :dummynam");
		query.setParameter("saldel", "1");
		query.setParameter("dummynam", update);
		int status=query.executeUpdate();
		transaction.commit();
		return status;
	}
	@Override
	public int UpdateProjectAllocation(String update) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("update TlBehaviour set projectAllocation = :pall  " + "where dummyname = :name");
		query.setParameter("pall", "1");
		query.setParameter("name", update);
		int status=query.executeUpdate();
		transaction.commit();
		return status;
	}
	@Override
	public int UpdateMeetingReport(String update) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("update TlBehaviour set MeetingsView = :meview  " + "where dummyname = :la");
		query.setParameter("meview", "1");
		query.setParameter("la", update);
		int status=query.executeUpdate();
		transaction.commit();
		return status;
	}
	@Override
	public int UpdateUserReportView(String update) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("update TlBehaviour set UserReportView = :urview  " + "where dummyname = :lan");
		query.setParameter("urview", "1");
		query.setParameter("lan", update);
		int status=query.executeUpdate();
		transaction.commit();
		return status;
	}
	@Override
	public int UpdateUserModulesView(String update) {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("update TlBehaviour set UserModulesView = :umview  " + "where dummyname = :lanj");
		query.setParameter("umview", "1");
		query.setParameter("lanj", update);
		int status=query.executeUpdate();
		transaction.commit();
		return status;
	}
	@Override
	public List<String> AdminBehaviour() {
		// TODO Auto-generated method stub
		transaction=session.beginTransaction();
		query=session.createQuery("from TlBehaviour");
	list=	query.list();
	transaction.commit();
		return list;
	}
	
	
	
}
