package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
	public static SessionFactory factory;
	
	public static SessionFactory getFactory() {  //we made this function static so that we don't have to create the object of FactoryProvider to call this method
		if(factory == null) {
			factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		return factory;
	}
	public void closeFactory() {
		if(factory.isOpen()) {
			factory.close();
		}
	}
}
