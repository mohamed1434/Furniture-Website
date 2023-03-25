package com.example.furnitureweb.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Truck {
    @Id
    int idTruck;
    String Name;
    int Number;
    int Load;
    String State;

    public Truck(){}
    public Truck(int idTruck, String name, int number, int load, String state) {
        this.idTruck = idTruck;
        Name = name;
        Number = number;
        Load = load;
        State = state;
    }

    public int getIdTruck() {
        return idTruck;
    }

    public void setIdTruck(int idTruck) {
        this.idTruck = idTruck;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public int getNumber() {
        return Number;
    }

    public void setNumber(int number) {
        Number = number;
    }

    public int getLoad() {
        return Load;
    }

    public void setLoad(int load) {
        Load = load;
    }

    public String getState() {
        return State;
    }

    public void setState(String state) {
        State = state;
    }
}
