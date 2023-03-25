package com.example.furnitureweb.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Products {

    @Id
    int idProducts;
    int category_idcategory;
    String Name;
    String Description;
    String Price;
    String Quantity;
    String Color;

    @Override
    public String toString() {
        return "Product{" +
                "idProducts=" + idProducts +
                ", idCategory='" + category_idcategory + '\'' +
                ", Name='" + Name + '\'' +
                ", Description='" + Description + '\'' +
                ", Price='" + Price + '\'' +
                ", Quantity='" + Quantity + '\'' +
                ", Color='" + Color + '\'' +
                '}';
    }

    public Products(int idProducts,int category_idcategory,String Name,String Description,String Price,String Quantity,String Color){
        this.idProducts = idProducts;
        this.category_idcategory = category_idcategory;
        this.Name = Name;
        this.Description = Description;
        this.Price = Price;
        this.Quantity = Quantity;
        this.Color = Color;
    }
    public Products(){}

    public int getIdProducts() {
        return idProducts;
    }

    public void setIdProducts(int idProducts) {
        this.idProducts = idProducts;
    }

    public int getIdCategory() {
        return category_idcategory;
    }

    public void setIdCategory(int category_idcategory) {
        this.category_idcategory = category_idcategory;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getPrice() {
        return Price;
    }

    public void setPrice(String price) {
        Price = price;
    }

    public String getQuantity() {
        return Quantity;
    }

    public void setQuantity(String quantity) {
        Quantity = quantity;
    }

    public String getColor() {
        return Color;
    }

    public void setColor(String color) {
        Color = color;
    }
}