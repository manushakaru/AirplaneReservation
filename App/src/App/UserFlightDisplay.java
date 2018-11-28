/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import java.sql.Connection;
import javax.swing.JButton;
import java.sql.ResultSet;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.util.ArrayList;

/**
 *
 * @author Dilan Sachintha
 */
public final class UserFlightDisplay extends javax.swing.JFrame {

    Connection con = CustomerDatabase.getConnection();
    
    /**
     * Creates new form UserFlightDisplay
     */
    
    private String selected_schedule;
    
    public UserFlightDisplay(Date picked_date) {
        initComponents();
        
        lbl_from.setText(UserHome.airport_from);
        lbl_to.setText(UserHome.airport_to);
        getSchedule(picked_date);
    }

    public void getSchedule(Date picked_date){
        
        String sql = "select * from (select * from flight_schedule where "
                +"route_id=(select route_id from route where origin=(select airport_code from airport where airport_name=?) "
                +"and destination=(select airport_code from airport where airport_name=?)) and date= ?) as A natural "+
                "left join delay as B natural left join predefined_schedule;";
        ResultSet rs2 = null;
        try{
        
            PreparedStatement prep1 = con.prepareStatement(sql);
            prep1.setString(1, UserHome.airport_from);
            prep1.setString(2, UserHome.airport_to);
            prep1.setString(3, picked_date.toString());
        
            String sql2 = "select * from (select * from price where route_id=(select route_id from route where "
                    + "origin=(select airport_code from airport where airport_name=?) and "
                    + "destination=(select airport_code from airport where airport_name=?))) "
                    + "as A natural left join class;";
            
            PreparedStatement prep2 = con.prepareStatement(sql2);
            prep2.setString(1, UserHome.airport_from);
            prep2.setString(2, UserHome.airport_to);

            ResultSet rs = (ResultSet)CustomerDatabase.getData(prep1);

            rs2 = (ResultSet)CustomerDatabase.getData(prep2);

            int i = 0;
            rs2.last();
            i = rs2.getRow();

            Object[][] scheduleData = new Object[i][6];
            String[] schedules = new String[i];

            i = 0;
            
            rs.beforeFirst();
                      

            while(rs.next()){

                scheduleData[i][0] = rs.getString("flight_schedule_id");
                scheduleData[i][1] = rs.getString("craft_id");
                scheduleData[i][2] = rs.getString("departure_time");
                scheduleData[i][3] = rs.getString("arrival_time");
                scheduleData[i][4] = rs.getString("departure_delay");
                scheduleData[i][5] = rs.getString("arrival_delay");
                
                schedules[i] = rs.getString("flight_schedule_id");

                i++;
                
            }
            
            combo_schedule_id.setModel(new javax.swing.DefaultComboBoxModel<>(schedules));
            selected_schedule = combo_schedule_id.getItemAt(0);

            tbl_schedule.setModel(new javax.swing.table.DefaultTableModel(
                scheduleData,
                new String [] {
                    "Flight Schedule ID", "Craft ID", "Departure Time", "Arrival Time", "Departure Delay", "Arrival Delay"
                }){
                    boolean[] canEdit = new boolean [] {
                        false, false, false, false, false, false
                    };

                    public boolean isCellEditable(int rowIndex, int columnIndex) {
                        return canEdit [columnIndex];
                    }
                });
            rs.close();
        }catch(Exception e){
            System.out.println(e);
        }
                
        try{
            int i = 0;
            rs2.last();
            i = rs2.getRow();
            
            Object[][] classData = new Object[i][2];
            String[] classes = new String[i];

            i = 0;
            
            rs2.beforeFirst();

            while(rs2.next()){
                classData[i][0] = rs2.getString("class");
                classData[i][1] = rs2.getString("price");
                
                classes[i] = rs2.getString("class");
                i++;
            }

            tbl_class.setModel(new javax.swing.table.DefaultTableModel(
                classData,
                new String [] {
                    "Class", "Price"
                }){
                    boolean[] canEdit = new boolean [] {
                        false, false
                    };

                    public boolean isCellEditable(int rowIndex, int columnIndex) {
                        return canEdit [columnIndex];
                    }
                });
        }catch(Exception e){
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

        jScrollPane2 = new javax.swing.JScrollPane();
        jTable2 = new javax.swing.JTable();
        jScrollPane3 = new javax.swing.JScrollPane();
        jTable3 = new javax.swing.JTable();
        jLabel3 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbl_schedule = new javax.swing.JTable();
        jScrollPane4 = new javax.swing.JScrollPane();
        tbl_class = new javax.swing.JTable();
        lbl_from = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        lbl_to = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        btn_booking = new javax.swing.JButton();
        combo_schedule_id = new javax.swing.JComboBox<>();
        btn_back = new javax.swing.JButton();

        jTable2.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane2.setViewportView(jTable2);

        jTable3.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane3.setViewportView(jTable3);

        jLabel3.setText("jLabel3");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        tbl_schedule.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Flight Schedule ID", "Craft ID", "Route ID", "Day", "Departure Time", "Arrival Time"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tbl_schedule.getTableHeader().setReorderingAllowed(false);
        tbl_schedule.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tbl_scheduleMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tbl_schedule);

        tbl_class.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null},
                {null, null},
                {null, null}
            },
            new String [] {
                "Class", "Price"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane4.setViewportView(tbl_class);

        lbl_from.setText("jlabel");

        jLabel1.setText("to");

        lbl_to.setText("jLabel2");

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel2.setText("Book");

        jLabel4.setText("Flight Schedule ID : ");

        btn_booking.setText("Go To Booking");
        btn_booking.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_bookingActionPerformed(evt);
            }
        });

        combo_schedule_id.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        combo_schedule_id.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                combo_schedule_idActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jScrollPane1))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(51, 51, 51)
                        .addComponent(lbl_from)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel1)
                        .addGap(250, 250, 250)
                        .addComponent(lbl_to)))
                .addContainerGap())
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 300, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 168, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btn_booking, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel2)
                            .addComponent(jLabel4))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(combo_schedule_id, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(70, 70, 70))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(lbl_to)
                    .addComponent(lbl_from))
                .addGap(19, 19, 19)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 207, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel2)
                .addGap(2, 2, 2)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel4)
                            .addComponent(combo_schedule_id, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addComponent(btn_booking, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(31, Short.MAX_VALUE))
        );

        btn_back.setText("Go Back");
        btn_back.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_backActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(btn_back)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(btn_back)
                .addGap(22, 22, 22)
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_backActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_backActionPerformed
        UserHome uh = new UserHome();
        this.setVisible(false);
        uh.setVisible(true);
    }//GEN-LAST:event_btn_backActionPerformed

    private void tbl_scheduleMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tbl_scheduleMouseClicked
    }//GEN-LAST:event_tbl_scheduleMouseClicked

    private void combo_schedule_idActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_combo_schedule_idActionPerformed
        selected_schedule = combo_schedule_id.getSelectedItem().toString();
    }//GEN-LAST:event_combo_schedule_idActionPerformed

    private void btn_bookingActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_bookingActionPerformed
        UserBooking ub = new UserBooking(selected_schedule);
        this.setVisible(false);
        ub.setVisible(true);
    }//GEN-LAST:event_btn_bookingActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_back;
    private javax.swing.JButton btn_booking;
    private javax.swing.JComboBox<String> combo_schedule_id;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JTable jTable2;
    private javax.swing.JTable jTable3;
    private javax.swing.JLabel lbl_from;
    private javax.swing.JLabel lbl_to;
    private javax.swing.JTable tbl_class;
    private javax.swing.JTable tbl_schedule;
    // End of variables declaration//GEN-END:variables
}
