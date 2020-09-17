package com.etstur.dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.etstur.entity.User;

@Repository
public class UserDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	//Insert User
	public Long insert(User user) {
		return (Long) sessionFactory.getCurrentSession().save(user);
	}
	
	//get User List
	public ArrayList<User> getUserList() {
		Query query = sessionFactory.getCurrentSession().createQuery("FROM User"); //Class ismi ile user listesini çekiyoruz.
		return (ArrayList<User>) query.getResultList();
	}
}
