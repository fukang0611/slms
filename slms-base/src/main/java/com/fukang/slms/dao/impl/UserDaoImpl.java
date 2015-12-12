package com.fukang.slms.dao.impl;

import com.fukang.slms.dao.IUserDao;
import com.fukang.slms.model.UserModel;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("IUserDao")
public class UserDaoImpl implements IUserDao {

    @Resource(name = "sessionFactory")
    SessionFactory factory;

    @Override
    public boolean addUser(UserModel user) {
        Session session = factory.getCurrentSession();
        return session.save(user) != null;
    }

    @Override
    public boolean delUser(UserModel user) {
        Session session = factory.getCurrentSession();
        session.delete(user);
        return true;
    }

    @Override
    public boolean updUser(UserModel user) {
        Session session = factory.getCurrentSession();
        session.update(user);
        return true;
    }

    @Override
    public UserModel getUserByPrimaryKey(String id) {
        Session session = factory.getCurrentSession();
        return session.get(UserModel.class, id);
    }

    @Override
    public UserModel getUserByUsername(String username) {
        Session session = factory.getCurrentSession();
        Query query = session.createQuery("from UserModel u where u.username=:username");
        query.setParameter("username", username);
        return (UserModel) query.uniqueResult();
    }

    @Override
    public List getUsersAll() {
        Session session = factory.getCurrentSession();
        Query query = session.createQuery("from UserModel");
        return query.list();
    }
}
