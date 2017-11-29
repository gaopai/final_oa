package com.oa.dao.impl;

import com.oa.dao.UserDao;
import com.oa.entity.Department;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao{
    @Autowired
     SessionFactory sessionFactory;
    @Override
    public List<Department> findAll() {

        Query query = sessionFactory.openSession().createSQLQuery("SELECT * FROM SYS_PREV_DEPARMENT");
       return  query.list();
    }
}
