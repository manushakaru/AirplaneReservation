
package App;

import static App.PastFlight.airport_from;
import static App.PastFlight.airport_to;
import static App.datataking.airport_from;
import static App.datataking.airport_to;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;


public class ViewPastflight extends javax.swing.JFrame {
    Connection con = Database.getConnection();

    public ViewPastflight(String airport_origin , String airport_dest) {
        initComponents();
        flghtschedule(airport_origin,airport_dest);
    }
    
   
    public void flghtschedule(String airport_origin , String airport_dest){        
        
        try {
            
            String query ="select flight_schedule_id ,arrival_time , departure_time,  date, departure_delay, "
                    + "arrival_delay, count(booking_id) as booking_count"
                    + " from predefined_schedule join (booking join ((route join flight_schedule using(route_id)) "
                    + "natural left outer join delay) using (flight_schedule_id)) using(schedule_id)"
                    + " where origin = (select airport_code from airport where "
                    + "airport_name ='"+airport_origin+"')  and destination = "
                    + "(select airport_code from airport where airport_name = '"+airport_dest+"')"
                    + " and date < curdate() group by flight_schedule_id ;";
                
       
            ResultSet rs;
            
            Statement st = con.createStatement();
            rs = st.executeQuery(query);
            
                
            int i = 0;
            rs.last();
            i = rs.getRow();
            
            Object[][] scheduleData = new Object[i][7];
            
            i = 0;
            rs.beforeFirst();
            
            while(rs.next()){
                
                scheduleData[i][0] = rs.getString("flight_schedule_id");
                scheduleData[i][1] = rs.getString("date");
                scheduleData[i][2] = rs.getString("arrival_time");
                scheduleData[i][3] = rs.getString("arrival_delay");
                scheduleData[i][4] = rs.getString("departure_time");
                scheduleData[i][5] = rs.getString("departure_delay");   
                scheduleData[i][6] = rs.getString("booking_count");  

                i++;
                
            }
            
            scheduletable.setModel(new javax.swing.table.DefaultTableModel(
                scheduleData,
                new String [] {
                    "Flight Schedule ID", "Date", " Arrival Time"," Arrival Delay"," Departure Time", "Departure Delay", "Passenger Count"
                }){
                    boolean[] canEdit = new boolean [] {
                        false, false, false, false, false, false,false
                    };

                    public boolean isCellEditable(int rowIndex, int columnIndex) {
                        return canEdit [columnIndex];
                    }
                });
            rs.close();

        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        scheduletable = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        scheduletable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null}
            },
            new String [] {
                "Flight No", "Date", "Arrival Time", "Arriaval delay", "Departure Time", "Departure delay", "Passenger count"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(scheduletable);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel1.setText("Past Flight Details");

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jButton1.setText("Back");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(20, 20, 20)
                        .addComponent(jButton1)
                        .addGap(118, 118, 118)
                        .addComponent(jLabel1))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 769, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(20, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(22, 22, 22)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jButton1))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 244, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(110, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        PastFlight pf = new PastFlight();
        this.setVisible(false);
        pf.setVisible(true);
    }//GEN-LAST:event_jButton1ActionPerformed

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable scheduletable;
    // End of variables declaration//GEN-END:variables
}
