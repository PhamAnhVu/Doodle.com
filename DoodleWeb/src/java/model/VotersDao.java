/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Voters;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author vupa
 */
public class VotersDao {
  
    public void insertVoter() {
        
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = null;
        
        try {
            transaction = session.beginTransaction();
            Voters voter = new Voters(2, "vupa1232");
            int result = (int) session.save(voter);
        } catch (Exception e) {
            
        }
        
    }
    
}
