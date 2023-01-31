package com.Accio;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    static Connection connection = null;
    public static Connection getConnection(){
        //checking if connection is already established
        if(connection != null){
            return connection;
        }
        //if there is no connection
        String db = "searchenginejava";
        String user = "root";
        String pwd = "password";
        return getConnection(db, user,pwd);
    }
    public static Connection getConnection(String db, String user, String pwd){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost/"+db+"?user="+user+"&password="+pwd);
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return connection;
    }
}

