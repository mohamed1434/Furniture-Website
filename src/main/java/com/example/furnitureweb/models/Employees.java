package com.example.furnitureweb.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Employees {
    @Id
    int idEmployees;
    int role_idrole;
    String Login;
    String Password;
    String Family;
    String Name;
    String email;

    @Override
    public String toString() {
        return "Employees{" +
                "idEmployees=" + idEmployees +
                ", Login='" + Login + '\'' +
                ", Password='" + idEmployees + '\'' +
                ", Family='" + Family + '\'' +
                ", Name='" + Name + '\'' +
                ", Email='" + email + '\'' +
                '}';
    }

    public Employees(){}

    public Employees(int idEmployees,String Login,String Password,String Family,String Name,String email,int role_idrole){
        this.idEmployees = idEmployees;
        this.role_idrole = role_idrole;
        this.Login = Login;
        this.Password = Password;
        this.Family = Family;
        this.Name = Name;
        this.email = email;
    }
    public Employees(String Login,String Password,String Family,String Name,String email){
        this.Login = Login;
        this.Password = Password;
        this.Family = Family;
        this.Name = Name;
        this.email = email;
    }
    public Employees(int idEmployees,String login,String password){
        this.idEmployees = idEmployees;
        this.Login = login;
        this.Password = password;
    }

    public Employees(String login,String password){
        this.Login = login;
        this.Password = password;
    }

    public int getIdEmployees() {
        return idEmployees;
    }

    public void setIdEmployees(int idEmployees) {
        this.idEmployees = idEmployees;
    }

    public int getIdRole() {
        return role_idrole;
    }

    public void setIdRole(int role_idrole) {
        this.role_idrole = role_idrole;
    }

    public String getLogin() {
        return Login;
    }

    public void setLogin(String Login) {
        this.Login = Login;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getFamily() {
        return Family;
    }

    public void setFamily(String Family) {
        this.Family = Family;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}