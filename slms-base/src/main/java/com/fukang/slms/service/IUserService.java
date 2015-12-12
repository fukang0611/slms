package com.fukang.slms.service;

import com.fukang.slms.model.UserModel;
import com.fukang.slms.utility.Pager;

import java.util.List;

public interface IUserService {

    UserModel getUserByPrimaryKey(String id);

    UserModel getUserByUsername(String username);

    List getUsersList(Pager pager);

    boolean addUser(UserModel user);

    boolean addUser(String username, String password);

    boolean delUserByModel(UserModel user);

    boolean delUserByPrimaryKey(String id);

    boolean updUserByModel(UserModel user);

    boolean loginCheck(String username, String password);

    boolean regUser(String username, String password);

}
