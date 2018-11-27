/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import java.time.LocalDate;

/**
 *
 * @author Irosh Mayantha
 */
public class Customer_class {
   LocalDate age;
    private int id;
    public Customer_class(LocalDate age,int id  ){
     this.age=age;
     this.id=id;
    }
     public LocalDate getage(){
    return age;
    }
    public int getid(){
    return id;
    }
    
}
