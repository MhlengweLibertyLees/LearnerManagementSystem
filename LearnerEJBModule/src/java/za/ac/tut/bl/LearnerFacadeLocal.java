
package za.ac.tut.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Learner;

@Local
public interface LearnerFacadeLocal {

    void create(Learner learner);

    void edit(Learner learner);

    void remove(Learner learner);

    Learner find(Object id);

    List<Learner> findAll();

    List<Learner> findRange(int[] range);

    int count();
    
}
