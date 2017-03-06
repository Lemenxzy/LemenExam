package com.bufoon.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

@SuppressWarnings("deprecation")
public class HibernateUtils {
	
	private static HibernateUtils instance = new HibernateUtils();
	
	public static HibernateUtils getInstance() {
		return instance;
	}
	
	private SessionFactory sessionFactory;
	
	private SessionFactory getSeeionFactory(){
		if(sessionFactory == null){
			Configuration configuration = new Configuration().configure();
			ServiceRegistry serviceRegistry = 
					new ServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
			sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		}
		return sessionFactory;
	}
	
	public Session getSession(){
		return getSeeionFactory().getCurrentSession();
		
	}
}