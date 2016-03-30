/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.*;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author vupa
 */
public class UserDao {

    private final SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

    public List<User> listUsers() {
        try {
            sessionFactory.getCurrentSession().beginTransaction();
            List<User> result = sessionFactory.getCurrentSession().createCriteria(User.class).list();
            sessionFactory.getCurrentSession().getTransaction().commit();
            return result;
        } catch (Exception e) {
            return null;
        } finally {

        }
    }

    public User getUser(String email, String password) {
        try {
            sessionFactory.getCurrentSession().beginTransaction();
            List<User> result = sessionFactory.getCurrentSession().createCriteria(User.class).list();
            User loginUser = null;
            for (User user : result) {
                if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
                    loginUser = user;
                }
            }
            sessionFactory.getCurrentSession().getTransaction().commit();
            return loginUser;
        } catch (Exception e) {
            sessionFactory.getCurrentSession().getTransaction().rollback();
            return null;
        } finally {
        }
    }
    
    public User getUser(String email) {
        try {
            sessionFactory.getCurrentSession().beginTransaction();
            List<User> result = sessionFactory.getCurrentSession().createCriteria(User.class).list();
            User loginUser = null;
            for (User user : result) {
                if (user.getEmail().equals(email)) {
                    loginUser = user;
                }
            }
            sessionFactory.getCurrentSession().getTransaction().commit();
            return loginUser;
        } catch (Exception e) {
            sessionFactory.getCurrentSession().getTransaction().rollback();
            return null;
        } finally {
        }
    }

    public boolean insert(User user) {
        try {
            sessionFactory.getCurrentSession().beginTransaction();
            sessionFactory.getCurrentSession().save(user);
            sessionFactory.getCurrentSession().getTransaction().commit();
            return true;
        } catch (Exception e) {
            sessionFactory.getCurrentSession().getTransaction().commit();
            return false;
        } finally {
        }
    }

}
