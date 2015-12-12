package com.fukang.slms.dao;

import com.fukang.slms.model.UserModel;
import com.fukang.slms.utility.Pager;

import java.util.List;

public interface IUserDao {

    boolean addUser(UserModel user);

    boolean delUser(UserModel user);

    boolean updUser(UserModel user);

    UserModel getUserByPrimaryKey(String id);

    UserModel getUserByUsername(String username);

    List getUsersList(Pager pager);

}
