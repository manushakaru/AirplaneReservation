/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Damitha
 */
public class ViewDetails extends javax.swing.JFrame {

    /**
     * Creates new form ViewDetails
     */
    

    private java.util.Date picked_start_date = null;
    private Date picked_sql_start_date = null;
    
    private java.util.Date picked_end_date = null;
    private Date picked_sql_end_date = null;
    public ViewDetails() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btn_back = new javax.swing.JButton();
        starting_date = new org.jdesktop.swingx.JXDatePicker();
        ending_date = new org.jdesktop.swingx.JXDatePicker();
        lbl_0 = new javax.swing.JLabel();
        lbl_1 = new javax.swing.JLabel();
        lbl_2 = new javax.swing.JLabel();
        lbl_3 = new javax.swing.JLabel();
        lbl_4 = new javax.swing.JLabel();
        btn_view = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        btn_back.setText("Back");
        btn_back.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_backActionPerformed(evt);
            }
        });

        lbl_0.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_0.setText("No of Total Customers");

        lbl_1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_1.setText("No of Gold Customers");

        lbl_2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_2.setText("No of Beginner Customers");

        lbl_3.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_3.setText("No of Guest Customers");

        lbl_4.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_4.setText("No of Frequent Customers");

        btn_view.setText("View");
        btn_view.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_viewActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel1.setText("Customer booking count");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(btn_back, javax.swing.GroupLayout.PREFERRED_SIZE, 68, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(83, 83, 83)
                        .addComponent(starting_date, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(65, 65, 65)
                        .addComponent(ending_date, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(38, 38, 38)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lbl_1)
                            .addComponent(lbl_0)
                            .addComponent(lbl_2)
                            .addComponent(lbl_3)
                            .addComponent(lbl_4)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(211, 211, 211)
                        .addComponent(btn_view))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(164, 164, 164)
                        .addComponent(jLabel1)))
                .addContainerGap(116, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(5, 5, 5)
                .addComponent(btn_back)
                .addGap(34, 34, 34)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(starting_date, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ending_date, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(34, 34, 34)
                .addComponent(btn_view)
                .addGap(15, 15, 15)
                .addComponent(lbl_0)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(lbl_1)
                .addGap(18, 18, 18)
                .addComponent(lbl_2)
                .addGap(18, 18, 18)
                .addComponent(lbl_3)
                .addGap(18, 18, 18)
                .addComponent(lbl_4)
                .addContainerGap(21, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_backActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_backActionPerformed
        // TODO add your handling code here:
        Admin_menu admin = new Admin_menu();
        this.setVisible(false);
        admin.setVisible(true);
    }//GEN-LAST:event_btn_backActionPerformed

    private void btn_viewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_viewActionPerformed
        // TODO add your handling code here:
        
        picked_start_date = starting_date.getDate();
        picked_sql_start_date = new Date(picked_start_date.getTime());

        picked_end_date = ending_date.getDate();
        picked_sql_end_date = new Date(picked_end_date.getTime());

        String col_val = null;
        String gold_cust = null;
        String freq_cust = null;
        String guest_cust = null;
        String beg_cust = null;

        Connection con = Database.getConnection();

        //System.out.println(query);
        PreparedStatement query = null;
        try {
            query = con.prepareStatement("SELECT  count(b.booking_id) FROM booking b where b.booked_date between ? and ? ;");
        } catch (SQLException ex) {
            Logger.getLogger(FlightTypeRevenue.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
            query.setString(1,picked_sql_start_date.toString());
            query.setString(2,picked_sql_end_date.toString());
            
        } catch (SQLException ex) {
            Logger.getLogger(FlightTypeRevenue.class.getName()).log(Level.SEVERE, null, ex);
        }        

        ResultSet rs;
        try {
            Statement st = con.createStatement();
            rs = query.executeQuery();
            java.sql.ResultSetMetaData rsmd = rs.getMetaData();
            int columnsNumber = rsmd.getColumnCount();
            while (rs.next()) {
                for (int i = 1; i <= columnsNumber; i++) {
                    if (i > 1) System.out.print(",  ");
                    String columnValue = rs.getString(i);
                    col_val = columnValue;
                    System.out.println(columnValue + " space " + rsmd.getColumnName(i));
                }
                System.out.println("");            }

        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }

        
        PreparedStatement query_1 = null;
        try {
            query_1 = con.prepareStatement("SELECT COUNT(c.user_id) from customer c, booking b WHERE b.user_id = c.user_id AND c.customer_type = 'Gold' and b.booked_date between ? and ? ;");
        } catch (SQLException ex) {
            Logger.getLogger(FlightTypeRevenue.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
            query_1.setString(1,picked_sql_start_date.toString());
            query_1.setString(2,picked_sql_end_date.toString());
            
        } catch (SQLException ex) {
            Logger.getLogger(FlightTypeRevenue.class.getName()).log(Level.SEVERE, null, ex);
        }        

        try {
            Statement st = con.createStatement();
            rs = query_1.executeQuery();
            java.sql.ResultSetMetaData rsmd = rs.getMetaData();
            int columnsNumber = rsmd.getColumnCount();
            while (rs.next()) {
                for (int i = 1; i <= columnsNumber; i++) {
                    if (i > 1) System.out.print(",  ");
                    String columnValue = rs.getString(i);
                    gold_cust = columnValue;
                    System.out.println(columnValue + " space " + rsmd.getColumnName(i));
                }
                System.out.println("");            }

        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
      

        
        PreparedStatement query_2 = null;
        try {
            query_2 = con.prepareStatement("SELECT COUNT(c.user_id) from customer c, booking b WHERE b.user_id = c.user_id AND c.customer_type = 'Frequent' and b.booked_date between ? and ? ;");
        } catch (SQLException ex) {
            Logger.getLogger(FlightTypeRevenue.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
            query_2.setString(1,picked_sql_start_date.toString());
            query_2.setString(2,picked_sql_end_date.toString());
            
        } catch (SQLException ex) {
            Logger.getLogger(FlightTypeRevenue.class.getName()).log(Level.SEVERE, null, ex);
        }        

        try {
            Statement st = con.createStatement();
            rs = query_2.executeQuery();
            java.sql.ResultSetMetaData rsmd = rs.getMetaData();
            int columnsNumber = rsmd.getColumnCount();
            while (rs.next()) {
                for (int i = 1; i <= columnsNumber; i++) {
                    if (i > 1) System.out.print(",  ");
                    String columnValue = rs.getString(i);
                    freq_cust = columnValue;
                    System.out.println(columnValue + " space " + rsmd.getColumnName(i));
                }
                System.out.println("");            }

        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        

        PreparedStatement query_3 = null;
        try {
            query_3 = con.prepareStatement("SELECT COUNT(c.user_id) from customer c, booking b WHERE b.user_id = c.user_id AND c.customer_type = 'Guest' and b.booked_date between ? and ? ;");
        } catch (SQLException ex) {
            Logger.getLogger(FlightTypeRevenue.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
            query_3.setString(1,picked_sql_start_date.toString());
            query_3.setString(2,picked_sql_end_date.toString());
            
        } catch (SQLException ex) {
            Logger.getLogger(FlightTypeRevenue.class.getName()).log(Level.SEVERE, null, ex);
        }        

        try {
            Statement st = con.createStatement();
            rs = query_3.executeQuery();
            java.sql.ResultSetMetaData rsmd = rs.getMetaData();
            int columnsNumber = rsmd.getColumnCount();
            while (rs.next()) {
                for (int i = 1; i <= columnsNumber; i++) {
                    if (i > 1) System.out.print(",  ");
                    String columnValue = rs.getString(i);
                    guest_cust = columnValue;
                    System.out.println(columnValue + " space " + rsmd.getColumnName(i));
                }
                System.out.println("");            }

        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        PreparedStatement query_4 = null;
        try {
            query_4 = con.prepareStatement("SELECT COUNT(c.user_id) from customer c, booking b WHERE b.user_id = c.user_id AND c.customer_type = 'Beginner' and b.booked_date between ? and ? ;");
        } catch (SQLException ex) {
            Logger.getLogger(FlightTypeRevenue.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
            query_4.setString(1,picked_sql_start_date.toString());
            query_4.setString(2,picked_sql_end_date.toString());
            
        } catch (SQLException ex) {
            Logger.getLogger(FlightTypeRevenue.class.getName()).log(Level.SEVERE, null, ex);
        }        

        try {
            Statement st = con.createStatement();
            rs = query_4.executeQuery();
            java.sql.ResultSetMetaData rsmd = rs.getMetaData();
            int columnsNumber = rsmd.getColumnCount();
            while (rs.next()) {
                for (int i = 1; i <= columnsNumber; i++) {
                    if (i > 1) System.out.print(",  ");
                    String columnValue = rs.getString(i);
                    beg_cust = columnValue;
                    System.out.println(columnValue + " space " + rsmd.getColumnName(i));
                }
                System.out.println("");            }

        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }

        System.out.println(col_val);

        this.lbl_0.setText("No of customers : " + col_val);
        this.lbl_1.setText("No of Gold customers :  " + gold_cust);
        this.lbl_2.setText("No of Beginner customers : " + beg_cust);
        this.lbl_3.setText("No of Guest customers : " + guest_cust);
        this.lbl_4.setText("No of Frequent customers : " + freq_cust);

    }//GEN-LAST:event_btn_viewActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ViewDetails.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ViewDetails.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ViewDetails.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ViewDetails.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ViewDetails().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_back;
    private javax.swing.JButton btn_view;
    private org.jdesktop.swingx.JXDatePicker ending_date;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel lbl_0;
    private javax.swing.JLabel lbl_1;
    private javax.swing.JLabel lbl_2;
    private javax.swing.JLabel lbl_3;
    private javax.swing.JLabel lbl_4;
    private org.jdesktop.swingx.JXDatePicker starting_date;
    // End of variables declaration//GEN-END:variables
}
