package com.fukang.slms.service.impl;

import com.fukang.slms.utility.Pager;
import com.fukang.slms.utility.StringHandler;
import com.fukang.slms.dao.IUserDao;
import com.fukang.slms.model.UserModel;
import com.fukang.slms.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("IUserService")
public class UserServiceImpl implements IUserService {

    @Autowired
    IUserDao iUserDao;

    private static StringHandler strHandler = new StringHandler();

    @Override
    public UserModel getUserByPrimaryKey(String id) {
        return iUserDao.getUserByPrimaryKey(id);
    }

    @Override
    public UserModel getUserByUsername(String username) {
        return iUserDao.getUserByUsername(username);
    }

    @Override
    public List getUsersList(Pager pager) {
        return iUserDao.getUsersList(pager);
    }

    @Override
    public boolean addUser(UserModel user) {
        return iUserDao.addUser(user);
    }

    @Override
    public boolean addUser(String username, String password) {

        if (!strHandler.isStrNullOrEmpty(username) && !strHandler.isStrNullOrEmpty(password)) {
            UserModel user = new UserModel(new Date(), username, password);
            return iUserDao.addUser(user);
        } else {
            return false;
        }
    }

    @Override
    public boolean delUserByModel(UserModel user) {
        return iUserDao.delUser(user);
    }

    @Override
    public boolean delUserByPrimaryKey(String id) {
        UserModel user = iUserDao.getUserByPrimaryKey(id);
        return iUserDao.delUser(user);
    }

    @Override
    public boolean updUserByModel(UserModel user) {
        return iUserDao.updUser(user);
    }

    @Override
    public boolean loginCheck(String username, String password) {
        UserModel user = iUserDao.getUserByUsername(username);
        return (user != null && user.getPassword().equals(password));
    }

    @Override
    public boolean regUser(String username, String password) {
        UserModel user = new UserModel(new Date(), username, password);
        return iUserDao.addUser(user);
    }
}
