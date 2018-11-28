/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Dilan Sachintha
 */
public class CustomerDatabase {
    public static Connection conn;
    public static PreparedStatement preparedStmt;
    
    public static Connection getConnection(){
        try{
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/airplane";
            String username = "customer";
            String password = "customer123";
            Class.forName(driver);
            
            Connection con = DriverManager.getConnection(url,username,password);
            System.out.println("Connected with mysql");
            return con;
        }catch(Exception e){
            System.out.println(e);
        }
        
        return null;
    }
    
    public static Object getData(PreparedStatement sql){
        conn = getConnection();
        
        try {
            ResultSet rs = sql.executeQuery();
            return rs;
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return ex;
        }
    }
    
    public static Object setData(PreparedStatement sql){
        conn = getConnection();
        
        try {
            int i = sql.executeUpdate();
            System.out.println(i);
            return i;
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, ex.getMessage());
            return ex;
        }
    }
}
