
package za.ac.tut.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.entities.Learner;

@Stateless
public class LearnerFacade extends AbstractFacade<Learner> implements LearnerFacadeLocal {

    @PersistenceContext(unitName = "LearnerEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public LearnerFacade() {
        super(Learner.class);
    }
    
}
