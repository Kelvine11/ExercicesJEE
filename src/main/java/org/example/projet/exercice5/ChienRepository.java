package org.example.projet.exercice5;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.List;

public class ChienRepository {

    private SessionFactory sessionFactory;
    private Session session;

    public ChienRepository() {
        sessionFactory = SessionfactorySingleton.getSessionFactory();
    }

    public Chien create (Chien chien){
        try{
            session = sessionFactory.openSession();
            session.beginTransaction();
            session.save(chien);
            session.getTransaction().commit();
            return chien;
        }catch (Exception ex){
            session.getTransaction().rollback();
            return null;
        }finally {
            session.close();
        }
    }

    public Chien findById (long id ){
        session = sessionFactory.openSession();
        Chien chien = session.get(Chien.class,id);
        session.close();
        return chien;
    }

    public List<Chien> getAll(){
       session = sessionFactory.openSession();
       Query<Chien> query = session.createQuery("from Chien", Chien.class);
       List<Chien> chiens = query.getResultList();
       session.close();
       return chiens;
    }

}
