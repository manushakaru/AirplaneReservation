/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JCheckBox;

/**
 *
 * @author Dilan Sachintha
 */
public class UserBooking extends javax.swing.JFrame {
    
    private ArrayList<String> selected_seats;
    private String schedule_id;
    Connection con = CustomerDatabase.getConnection();

    /**
     * Creates new form UserBooking
     */
    public UserBooking(String schedule_id) {
        initComponents();
        selected_seats = new ArrayList<>();
        this.schedule_id = schedule_id;
        getSeats(schedule_id);
    }
    
    public void getSeats(String schedule_id){
                
        try{
            
            String call = "{call get_seats(?)}";
            
            CallableStatement stmt = con.prepareCall(call);
            stmt.setString(1, schedule_id);
            ResultSet rs = stmt.executeQuery();

            int bounds = 0;
            
            while(rs.next()){                
                JCheckBox checkBox_seat = new javax.swing.JCheckBox();
                checkBox_seat.setText("Seat " + rs.getString("seat_no") + " - " + rs.getString("class"));
                checkBox_seat.setName(rs.getString("seat_id"));
                checkBox_seat.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        if(!selected_seats.remove(checkBox_seat.getName())){
                            selected_seats.add(checkBox_seat.getName());
                        }
                    }
                });
                checkBox_seat.setBounds(150,80+bounds,150,30);
                this.add(checkBox_seat);
                bounds+=35;
            }
            
        }catch(SQLException e){
            System.out.println(e);
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        btn_book = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("Remaining Seats : ");

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel2.setText("Confirm Booking");

        btn_book.setText("Pay & Book Seat");
        btn_book.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_bookActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(139, 139, 139)
                .addComponent(jLabel2)
                .addContainerGap(165, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btn_book)
                .addGap(55, 55, 55))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2)
                .addGap(40, 40, 40)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(btn_book))
                .addContainerGap(365, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_bookActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_bookActionPerformed
        if(Login.userId > 0){
            RegisteredCustomerPay gup = new RegisteredCustomerPay(selected_seats, schedule_id);
            this.setVisible(false);
            gup.setVisible(true);
        }else{
            GuestUserPay gup = new GuestUserPay(selected_seats, schedule_id);
            this.setVisible(false);
            gup.setVisible(true);
        }
    }//GEN-LAST:event_btn_bookActionPerformed
 
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_book;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    // End of variables declaration//GEN-END:variables
}
