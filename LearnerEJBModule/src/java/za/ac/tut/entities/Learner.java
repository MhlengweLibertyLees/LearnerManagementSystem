package za.ac.tut.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "LearnerTbl")
public class Learner implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "StudentNumber", nullable = false)
    private Long studentNumber;

    @Column(name = "Name", nullable = false, length = 40)
    private String name;

    @Column(name = "Surname", nullable = false, length = 40)
    private String surname;

    @Column(name = "BirthDate", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date birthDate;

    @Column(name = "Qualification", nullable = false, length = 40)
    private String qualification;

    @Column(name = "Timestamp", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date timestamp;

    public Learner() {
    }

    public Learner(Long studentNumber, String name, String surname, Date birthDate, String qualification, Date timestamp) {
        this.studentNumber = studentNumber;
        this.name = name;
        this.surname = surname;
        this.birthDate = birthDate;
        this.qualification = qualification;
        this.timestamp = timestamp;
    }

    public Long getStudentNumber() {
        return studentNumber;
    }

    public void setStudentNumber(Long studentNumber) {
        this.studentNumber = studentNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (studentNumber != null ? studentNumber.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Learner)) {
            return false;
        }
        Learner other = (Learner) object;
        return (this.studentNumber != null || other.studentNumber == null) && (this.studentNumber == null || this.studentNumber.equals(other.studentNumber));
    }

    @Override
    public String toString() {
        return "za.ac.tut.entities.Learner[ studentNumber=" + studentNumber + " ]";
    }
}
