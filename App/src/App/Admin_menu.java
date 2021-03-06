
package App;

public class Admin_menu extends javax.swing.JFrame {

    private datataking dt = null;
    
    public Admin_menu() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btn_passenger_count = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        btn_booking_count = new javax.swing.JButton();
        passenger_age = new javax.swing.JButton();
        btn_revenue = new javax.swing.JButton();
        pastState = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        btn_passenger_count.setText("Passenger Count");
        btn_passenger_count.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_passenger_countActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel1.setText("Admin Menu");

        btn_booking_count.setText("Booking Count");
        btn_booking_count.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_booking_countActionPerformed(evt);
            }
        });

        passenger_age.setText("flight passengers");
        passenger_age.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                passenger_ageActionPerformed(evt);
            }
        });

        btn_revenue.setText("Total Revenue");
        btn_revenue.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_revenueActionPerformed(evt);
            }
        });

        pastState.setText("Past flisht states");
        pastState.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                pastStateActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(170, 170, 170)
                        .addComponent(jLabel1))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(133, 133, 133)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(btn_revenue, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(passenger_age, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(btn_passenger_count, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(btn_booking_count, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(pastState, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 177, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(154, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addComponent(jLabel1)
                .addGap(31, 31, 31)
                .addComponent(passenger_age)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btn_passenger_count)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btn_booking_count)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(pastState)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btn_revenue)
                .addContainerGap(79, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_passenger_countActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_passenger_countActionPerformed
        dt = new datataking();
        this.setVisible(false);
        dt.setVisible(true);

    }//GEN-LAST:event_btn_passenger_countActionPerformed

    private void btn_booking_countActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_booking_countActionPerformed
        // TODO add your handling code here:
        ViewDetails vd = new ViewDetails();
        this.setVisible(false);
        vd.setVisible(true);
    }//GEN-LAST:event_btn_booking_countActionPerformed


    private void pastStateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_pastStateActionPerformed
        // TODO add your handling code here:
        PastFlight pf = new PastFlight();
        this.setVisible(false);
        pf.setVisible(true);
    }//GEN-LAST:event_pastStateActionPerformed

    private void passenger_ageActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_passenger_ageActionPerformed
        Flight_check fCheck = new Flight_check();
        this.setVisible(false);
        fCheck.setVisible(true);
    }//GEN-LAST:event_passenger_ageActionPerformed

    private void btn_revenueActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_revenueActionPerformed
        // TODO add your handling code here:
        FlightTypeRevenue f_revenue = new FlightTypeRevenue();
        this.setVisible(false);
        f_revenue.setVisible(true);
    }//GEN-LAST:event_btn_revenueActionPerformed

    public static void main(String args[]) {

        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Admin_menu().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_booking_count;
    private javax.swing.JButton btn_passenger_count;
    private javax.swing.JButton btn_revenue;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JButton passenger_age;
    private javax.swing.JButton pastState;
    // End of variables declaration//GEN-END:variables
}
