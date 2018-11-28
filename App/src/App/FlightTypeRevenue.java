/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import java.sql.Connection;
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


public class FlightTypeRevenue extends javax.swing.JFrame {

    /**
     * Creates new form FlightTypeRevenue
     */
    
    private String[] aircrafts;
    
    private String aircraft_type = null;
    Connection con = CustomerDatabase.getConnection();
    
    
    public FlightTypeRevenue() {
        
        setComboBoxData();
        initComponents();
        
        cmb_air.setModel(new javax.swing.DefaultComboBoxModel<>(aircrafts));
        aircraft_type = cmb_air.getItemAt(0);
 
    }
    
    
        public void setComboBoxData(){
        String sql = "select distinct(craft_type) from aircraft";
        try {
            PreparedStatement prep = con.prepareStatement(sql);
            ResultSet rs = (ResultSet)CustomerDatabase.getData(prep);
        
            rs.last();
        
            aircrafts = new String[rs.getRow()];
            rs.beforeFirst();
            
            int i=0;
            while(rs.next()){
                aircrafts[i] = rs.getString("craft_type");
                i++;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserHome.class.getName()).log(Level.SEVERE, null, ex);
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
        btn_back = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        btn_view = new javax.swing.JButton();
        lbl_0 = new javax.swing.JLabel();
        cmb_air = new javax.swing.JComboBox<>();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("Fligth type revenue");

        btn_back.setText("Back");
        btn_back.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_backActionPerformed(evt);
            }
        });

        jLabel2.setText("Enter Flight type : ");

        btn_view.setText("View");
        btn_view.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_viewActionPerformed(evt);
            }
        });

        lbl_0.setText("Total revenue by selected Aircraft type :");

        cmb_air.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        cmb_air.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmb_airActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(68, 68, 68)
                        .addComponent(jLabel2)
                        .addGap(18, 18, 18)
                        .addComponent(cmb_air, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(153, 153, 153)
                        .addComponent(btn_view))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(22, 22, 22)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lbl_0)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(btn_back)
                                .addGap(43, 43, 43)
                                .addComponent(jLabel1)))))
                .addContainerGap(144, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btn_back)
                    .addComponent(jLabel1))
                .addGap(47, 47, 47)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(cmb_air, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 51, Short.MAX_VALUE)
                .addComponent(btn_view)
                .addGap(40, 40, 40)
                .addComponent(lbl_0)
                .addGap(61, 61, 61))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_viewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_viewActionPerformed
        // TODO add your handling code here:
        
        System.out.println(aircraft_type);
        Connection con = Database.getConnection();       
        
        PreparedStatement query = null;
        try {
            query = con.prepareStatement("SELECT Round(SUM(b.price - ((b.price)*(cs.discount)/100)),2) FROM booking b, seat s, aircraft ac, customer c, customer_state cs WHERE ac.craft_type = ? AND ac.craft_id = s.craft_id and s.seat_id = b.seat_id and b.user_id = c.user_id and c.customer_type = cs.customer_state ;");
        } catch (SQLException ex) {
            Logger.getLogger(FlightTypeRevenue.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
            query.setString(1,aircraft_type);
        } catch (SQLException ex) {
            Logger.getLogger(FlightTypeRevenue.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String col_val = null;
        System.out.println(query);
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
                System.out.println("");
            }

        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        this.lbl_0.setText("Total Revenue by aircraft type : " + col_val);
        
    }//GEN-LAST:event_btn_viewActionPerformed

    private void btn_backActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_backActionPerformed
        // TODO add your handling code here:
        Admin_menu admin = new Admin_menu();
        this.setVisible(false);
        admin.setVisible(true);
    }//GEN-LAST:event_btn_backActionPerformed

    private void cmb_airActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmb_airActionPerformed
        // TODO add your handling code here:
        aircraft_type = cmb_air.getSelectedItem().toString();
    }//GEN-LAST:event_cmb_airActionPerformed

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
            java.util.logging.Logger.getLogger(FlightTypeRevenue.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FlightTypeRevenue.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FlightTypeRevenue.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FlightTypeRevenue.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FlightTypeRevenue().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_back;
    private javax.swing.JButton btn_view;
    private javax.swing.JComboBox<String> cmb_air;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel lbl_0;
    // End of variables declaration//GEN-END:variables
}
