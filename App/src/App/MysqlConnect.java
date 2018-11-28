/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Irosh Mayantha
 */
public class MysqlConnect {
    Connection con=null;
    public static Connection ConnectDB(){
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/airplane","root","");
        return con;
    }
    catch(Exception ex){
        System.out.println("con error");
        return null;
        }
    
    
    
    
    }
    
}
