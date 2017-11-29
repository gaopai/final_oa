package com.oa.service.impl;

import com.oa.dao.UserDao;
import com.oa.entity.Department;
import com.oa.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public List<Department> findAll() {
        return userDao.findAll();
    }
}
