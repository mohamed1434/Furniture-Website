package com.example.furnitureweb.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Category {

    @Id
    int idCategory;
    String Name;

    public Category(){}
    public Category(int idCategory,String Name){
        this.idCategory = idCategory;
        this.Name = Name;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }
}
