package com.fukang.slms.dao.impl;

import com.fukang.slms.dao.IUserDao;
import com.fukang.slms.model.UserModel;
import com.fukang.slms.utility.Pager;
import com.fukang.slms.utility.StringHandler;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.lang.reflect.Type;
import java.util.List;

@Repository("IUserDao")
public class UserDaoImpl implements IUserDao {

    @Resource(name = "sessionFactory")
    SessionFactory factory;

    StringHandler stringHandler = new StringHandler();

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
    public List getUsersList(Pager pager) {

        String username = stringHandler.isStrNullOrEmpty(pager.getSearch()) ? "" : pager.getSearch();
        String sort = stringHandler.isStrNullOrEmpty(pager.getSort()) ? "id" : pager.getSort();

        Session session = factory.getCurrentSession();
        String hql = "from UserModel u where u.username like :username";
        hql += " order by " + sort + " " + pager.getOrder();

        Query query = session.createQuery(hql);
        query.setParameter("username", "%" + username + "%");
        query.setFirstResult(pager.getOffset());
        query.setMaxResults(pager.getLimit());

        Query queryRows = session.createQuery("select count(*) " + hql);
        queryRows.setParameter("username", "%" + username + "%");
        pager.setTotalRows((Long) queryRows.uniqueResult());

        return query.list();
    }
}
