package com.Intrusion.Connection;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ConnectionImpl {
  
	public static Configuration config;
	public static SessionFactory sessionfact;
	public static Session session;
public static 	Configuration getConfigure()
{
	
	try
	{
		if(config==null)
		{
			config=new Configuration();
			config.configure("hibernate.cfg.xml");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return config;
	
}
public static SessionFactory getSessionFactory()
{
	try
	{
		if(sessionfact==null)
		{
			Configuration config=ConnectionImpl.getConfigure();
			sessionfact=config.buildSessionFactory();
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return sessionfact;
	
}
public static Session getSession()
{
	
	try {
		
		if(session==null)
		{
			
			SessionFactory sessionfact=ConnectionImpl.getSessionFactory();
			session=sessionfact.openSession();
		}
		else{
			if(!session.isConnected())
			{
				
				session=sessionfact.openSession();
			} 
			else
			{
				return session;
			}
			}
		
	  } catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	 }
	
	
	return session;
	
}

}
