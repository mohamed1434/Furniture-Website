package com.example.furnitureweb.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Role {
    @Id
    int idrole;
    String Position;
    String description;
    int employees_idEmployees;

    @Override
    public String toString() {
        return "User{" +
                "idRole=" + idrole +
                ", Position='" + Position + '\'' +
                ", Description='" + description + '\'' +
                ", idEmployees='" + employees_idEmployees + '\'' +
                '}';
    }

    public String getPosition() {
        return Position;
    }

    public void setName(String position) {
        this.Position = position;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Role(int idrole, String position, String description, int idEmployees) {
        this.idrole = idrole;
        this.Position = position;
        this.description = description;
        this.employees_idEmployees = idEmployees;
    }

    public Role(int idrole, String position) {
        this.idrole = idrole;
        this.Position = position;
    }

    public int getIdEmployees() {
        return employees_idEmployees;
    }
    public void setRoll(int idEmployees) {
        this.employees_idEmployees = idEmployees;
    }
    public Role() {

    }


    public int getIdRole() {
        return idrole;
    }

    public void setIdRole(int id) {
        this.idrole = id;
    }
}