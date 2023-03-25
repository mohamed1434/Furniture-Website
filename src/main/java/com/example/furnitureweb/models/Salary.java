package com.example.furnitureweb.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Salary {
    @Id
    int idSalary;
    int employees_idemployees;
    int salary;

    public Salary(){}
    public Salary(int idSalary, int employees_idemployees, int salary) {
        this.idSalary = idSalary;
        this.employees_idemployees = employees_idemployees;
        this.salary = salary;
    }
    public Salary(int salary) {
        this.salary = salary;
    }

    public int getIdSalary() {
        return idSalary;
    }

    public void setIdSalary(int idSalary) {
        this.idSalary = idSalary;
    }

    public int getIdEmployees() {
        return employees_idemployees;
    }

    public void setIdEmployees(int employees_idemployees) {
        this.employees_idemployees = employees_idemployees;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }
}
