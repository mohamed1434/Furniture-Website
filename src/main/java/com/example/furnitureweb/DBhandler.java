package com.example.furnitureweb;

import com.example.furnitureweb.models.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

public class DBhandler {
    static Connection con;

    public static void createConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String ssl = "verifyServerCertificate=false&useSSL=true&Unicode=true";
            String timeZONE = "JDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=Europe/Moscow";
            String url ="jdbc:mysql://localhost:3306/fshop?"+timeZONE+"&"+ssl;
            con = DriverManager.getConnection(url, "root", "1234");
            System.out.println("Database connected :)");
        }catch (Exception e){
            System.out.println("No connection :(");
            e.printStackTrace();
        }
    }
    public static int getUserRoll(String name){
        int id = 0;
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a = "select role_idrole from Employees where Login = '"+ name + "'";
            ResultSet resultSet = statement.executeQuery(a);
            resultSet.next();
            id = resultSet.getInt(1);
            System.out.println(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    }
    public static String getUserPosition(int id){
        String pos = "";
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a = "select Position from Role where idrole = " + id;
            ResultSet resultSet = statement.executeQuery(a);
            resultSet.next();
            pos = resultSet.getString(1);
            System.out.println(pos);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pos;
    }

    public static int getUserID(String name){
        int id = 0;
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a = "select idEmployees from Employees where Login = " + "'"+ name + "'";
            ResultSet resultSet = statement.executeQuery(a);
            resultSet.next();
            id = resultSet.getInt(1);
            System.out.println("User ID = " + id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    }

    public static String getUserPassword(String name){
        String pass = "";
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a = "select Password from Employees where Login = '"+ name + "'";
            ResultSet resultSet = statement.executeQuery(a);
            resultSet.next();
            pass = resultSet.getString(1);
            System.out.println(pass);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pass;
    }

    public static void addUser(String Login,String Password,String Family,String Name,String email){
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a ="insert INTO employees (Login,Password,Family,Name,email) VALUES('"+Login+"','"+Password+"','"+Family+"','"+Name+"','"+ email+"')";
            statement.executeUpdate(a);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static ArrayList<Products> getAllProducts(){
        ArrayList<Products> arr = new ArrayList<>();
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a = "select * from Products";
            ResultSet resultSet = statement.executeQuery(a);
            while (resultSet.next()){
                Products p = new Products(resultSet.getInt(1),resultSet.getInt(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),resultSet.getString(6),resultSet.getString(7));
                arr.add(p);
            }
            //statement.executeUpdate(a);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return arr;
    }

    public static ArrayList<Products> getAllProductsByID(int id){
        ArrayList<Products> arr = new ArrayList<>();
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a = "select * from Products where idProducts = " + id;
            ResultSet resultSet = statement.executeQuery(a);
            while (resultSet.next()){
                Products p = new Products(resultSet.getInt(1),resultSet.getInt(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),resultSet.getString(6),resultSet.getString(7));
                arr.add(p);
            }
            //statement.executeUpdate(a);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return arr;
    }

    public static ArrayList<Products> getProductByID(int id){
        ArrayList<Products> arr = new ArrayList<>();
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a = "select * from Products where idProducts = " + id;
            ResultSet resultSet = statement.executeQuery(a);
            while (resultSet.next()){
                Products p = new Products(resultSet.getInt(1),resultSet.getInt(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),resultSet.getString(6),resultSet.getString(7));
                arr.add(p);
            }
            //statement.executeUpdate(a);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return arr;
    }

    public static String getCategory(int id){
        String category = "";
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a = "select Name from Category where idCategory = " + id;
            ResultSet resultSet = statement.executeQuery(a);
            resultSet.next();
            category = resultSet.getString(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return category;
    }

    public static ArrayList<Products> getAllIdCategory(){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("pu");
        EntityManager em =emf.createEntityManager();
        ArrayList<Products> arr = (ArrayList<Products>) em.createQuery("select p.category_idcategory from Products p").getResultList();
        return arr;
    }

    public static boolean userExist(Employees e){
        boolean exist =false;
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("pu");
        EntityManager em =emf.createEntityManager();
        ArrayList<Employees> arr = (ArrayList<Employees>) em.createQuery("select e from Employees e").getResultList();
        for(Employees a :arr){
            if(a.getLogin().equals(e.getLogin())&&a.getPassword().equals(e.getPassword())){
                exist=true;
                break;
            }
        }
        return exist;
    }
    public static ArrayList<Truck> getAllTrucks(){
        ArrayList<Truck> arr = new ArrayList<>();
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a = "select * from Truck";
            ResultSet resultSet = statement.executeQuery(a);
            while (resultSet.next()){
                Truck t = new Truck(resultSet.getInt(1),resultSet.getString(2),resultSet.getInt(3),resultSet.getInt(4),resultSet.getString(5));
                arr.add(t);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return arr;
    }

    public static int getSalaries(int id){
        int sal = 0;
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a = "select salary from Salary where employees_idemployees = " + id;
            ResultSet resultSet = statement.executeQuery(a);
            resultSet.next();
            sal = resultSet.getInt(1);
            statement.executeUpdate(a);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sal;
    }
    public static ArrayList<Salary> getAllz(){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("pu");
        EntityManager em =emf.createEntityManager();
        ArrayList<Salary> arr = (ArrayList<Salary>) em.createQuery("select s.salary from Salary s inner join Employees e on s.employees_idemployees=e.idEmployees").getResultList();
        return arr;
    }

    public static ArrayList<Employees> getAllUsers(){
        ArrayList<Employees> arr = new ArrayList<>();
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a = "select * from Employees";
            ResultSet resultSet = statement.executeQuery(a);
            while (resultSet.next()){
                Employees e = new Employees(resultSet.getInt(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),resultSet.getString(6),resultSet.getInt(7));
                arr.add(e);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return arr;
    }

    public static void addOrder(int productId, int clientId){
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a ="insert INTO Orders (productId,clientId) VALUES('"+productId+"','"+clientId+"')";
            statement.executeUpdate(a);
            String b ="update Products set Quantity=Quantity-1 where idProducts=" + productId;
            statement.executeUpdate(b);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static ArrayList<Orders> getOrder(){
        ArrayList<Orders> arr = new ArrayList<>();
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a = "select * from Orders";
            ResultSet resultSet = statement.executeQuery(a);
            while (resultSet.next()){
                Orders e = new Orders(resultSet.getInt(1),resultSet.getInt(2),resultSet.getInt(3));
                arr.add(e);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return arr;
    }

//    public static int getProductID(){
//        int id = 0;
//        try{
//            createConnection();
//            Statement statement =con.createStatement();
//            String a = "select idProducts from Products where Login = " + "'"+ name + "'";
//            ResultSet resultSet = statement.executeQuery(a);
//            resultSet.next();
//            id = resultSet.getInt(1);
//            System.out.println("User ID = " + id);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return id;
//    }

    public static void addToPlaceOrder(int orderId,int userId,int truckId){
        try{
            createConnection();
            Statement statement =con.createStatement();
            String a ="insert INTO Delivered (orderId,empId,truckId) VALUES('"+orderId+"','"+userId+"','"+truckId+"')";
            statement.executeUpdate(a);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
