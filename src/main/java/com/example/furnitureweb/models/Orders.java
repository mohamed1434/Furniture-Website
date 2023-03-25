package com.example.furnitureweb.models;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Orders {
    @Id
    int id;

    int productId;

    int clientId;

    Date time;

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", productId='" + productId + '\'' +
                ", clientId='" + clientId + '\'' +
                ", time='" + time + '\'' +
                '}';
    }

    public Orders(){}

    public Orders(int id,int productId,int clientId,Date time){
        this.id = id;
        this.productId = productId;
        this.clientId = clientId;
        this.time = time;
    }

    public Orders(int id,int productId,int clientId){
        this.id = id;
        this.productId = productId;
        this.clientId = clientId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
