package com.example.furnitureweb;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Delivered {

    @Id
    int id;

    int orderId;
    int empId;
    int truckId;

    public Delivered(){}

    public Delivered(int id,int orderId,int empId,int truckId){
        this.id = id;
        this.orderId = orderId;
        this.empId = empId;
        this.truckId = truckId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }

    public int getTruckId() {
        return truckId;
    }

    public void setTruckId(int truckId) {
        this.truckId = truckId;
    }
}
