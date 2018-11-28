/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.time.LocalDate;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Dilan Sachintha
 */
public class RegisteredCustomerPay extends javax.swing.JFrame {
    

    private ArrayList<PreparedStatement> book_queries;
    Connection con = CustomerDatabase.getConnection();
    
    /**
     * Creates new form RegisteredCustomerPay
     */
    public RegisteredCustomerPay(ArrayList<String> selected_seats, String schedule_id) {
        initComponents();
        calcData(selected_seats, schedule_id);
    }

    public void calcData(ArrayList<String> selected_seats, String schedule_id){
        
        String insert = "";
        
        for(int i = 0; i < selected_seats.size() ; i++){
            insert = insert + "seat_id='"+selected_seats.get(i)+"' or ";
        }
        try{
            String sql = "select * from (select * from seat where "+insert.substring(0, insert.length()-4)+")"
                    + " as A natural left join class natural left join"
                    + " (select * from price where route_id=(select route_id "
                    + "from flight_schedule where"
                    + " flight_schedule_id='"+schedule_id+"')) as B;";

            String sql2 = "select * from customer_state where customer_state=(select customer_type from customer where user_id=?)";

            PreparedStatement prep1 = con.prepareStatement(sql);
            PreparedStatement prep2 = con.prepareStatement(sql2);
            prep2.setString(1, Integer.toString(Login.userId));
            ResultSet rs = (ResultSet)CustomerDatabase.getData(prep1);

            ResultSet rs2 = (ResultSet)CustomerDatabase.getData(prep2);
            
            LocalDate date = LocalDate.now();
            
            System.out.println(date);
            
            String seat_id = "";
            float price = 0;
            
            book_queries = new ArrayList<PreparedStatement>();
            
            int econ_seats = 0;
            int busi_seats = 0;
            int plati_seats = 0;
            float og_econ_price = 0;
            float og_busi_price = 0;
            float og_plati_price = 0;
            float econ_price = 0;
            float busi_price = 0;
            float plati_price = 0;
            
            float total_price = 0;
            
            rs2.next();
            
            while(rs.next()){
                if(rs.getString("class").equals("Economy")){
                    seat_id = rs.getString("seat_id");
                    econ_seats += 1;
                    price = rs.getFloat("price");
                    og_econ_price += price;
                    price = price - (price* (rs2.getFloat("discount")/100));
                    econ_price += price;
                    
                }else if(rs.getString("class").equals("Buisness")){
                    seat_id = rs.getString("seat_id");
                    busi_seats += 1;
                    price = rs.getFloat("price");
                    og_busi_price += price;
                    price = price - (price* (rs2.getFloat("discount")/100));
                    busi_price += price;
                }else if(rs.getString("class").equals("Platinum")){
                    seat_id = rs.getString("seat_id");
                    plati_seats += 1;
                    price = rs.getFloat("price");
                    og_plati_price += price;
                    price = price - (price* (rs2.getFloat("discount")/100));
                    plati_price += price;
                }
                
                String insertBooking = "insert into booking(user_id,flight_schedule_id,"
                    + "seat_id,price,booked_date) values (?,?,?,?,?);";
                
                PreparedStatement prep = con.prepareStatement(insertBooking);
                prep.setString(1, Integer.toString(Login.userId));
                prep.setString(2, schedule_id);
                prep.setString(3, seat_id);
                prep.setString(4, Float.toString(price));
                prep.setString(5, date.toString());
                book_queries.add(prep);
            }
            
            System.out.println(total_price);

            lbl_econ_seat.setText(Integer.toString(econ_seats));
            lbl_busi_seat.setText(Integer.toString(busi_seats));
            lbl_plati_seat.setText(Integer.toString(plati_seats));
            lbl_econ_price.setText(Float.toString(og_econ_price));
            lbl_busi_price.setText(Float.toString(og_busi_price));
            lbl_plati_price.setText(Float.toString(og_plati_price));
            lbl_discount.setText(Integer.toString(rs2.getInt("discount"))+"%");
            
            lbl_seat_total.setText(Integer.toString(econ_seats+busi_seats+plati_seats));
            
            total_price = (econ_price + busi_price + plati_price);
                        
            lbl_price_total.setText(Float.toString(total_price));
            
        }catch(SQLException e){
            
        }
    }
    
    public void bookSeat(){
        
        
        
        Connection conn = Database.getConnection();;
        
        try{
            conn.setAutoCommit(false);
            
            int i = 0;
            while(i < book_queries.size()){
                int j = (Integer)CustomerDatabase.setData(book_queries.get(i));
                i++;
            }
            
            conn.commit();

            conn.close();
            JOptionPane.showMessageDialog(null, "Booking Successfull!!!");
          }
          catch (Exception e){
            System.err.println("Got an exception!");
            System.err.println(e.getMessage());
            JOptionPane.showMessageDialog(null, e.getMessage());
            try {
                conn.rollback();
                conn.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            }
            UserHome um = new UserHome();
            this.setVisible(false);
            um.setVisible(true);
          }
    }
    
    public Object setState(){
        String sql = "select * from customer_state where bookings_needed>(select"
                + " count(booking_id) from booking where user_id=?);";
        
        try {
            PreparedStatement prep = con.prepareStatement(sql);
            prep.setString(1, Integer.toString(Login.userId));
        
            ResultSet rs = (ResultSet)CustomerDatabase.getData(prep);
        
            if(rs.next()){
                String sql2 = "select count(booking_id) from booking where user_id=?;";
                PreparedStatement prep2 = con.prepareStatement(sql2);
                prep2.setString(1, Integer.toString(Login.userId));
                ResultSet rs2 = (ResultSet)CustomerDatabase.getData(prep2);
                rs2.next();
                if(rs.getInt("bookings_needed") == (rs2.getInt("count(booking_id)")+1)){
                    String sql3 = "UPDATE customer SET customer_type=? where user_id=?;";
                    PreparedStatement prep3 = con.prepareStatement(sql3);
                    prep3.setString(1, rs.getString("customer_state"));
                    prep3.setString(2, Integer.toString(Login.userId));
                    CustomerDatabase.setData(prep3);

                    return true;
                }
            }
        } catch (SQLException ex) {
            return ex;
            //Logger.getLogger(RegisteredCustomerPay.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
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
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        lbl_econ_seat = new javax.swing.JLabel();
        lbl_busi_seat = new javax.swing.JLabel();
        lbl_plati_seat = new javax.swing.JLabel();
        lbl_econ_price = new javax.swing.JLabel();
        lbl_busi_price = new javax.swing.JLabel();
        lbl_plati_price = new javax.swing.JLabel();
        lbl_seat_total = new javax.swing.JLabel();
        lbl_price_total = new javax.swing.JLabel();
        btn_book = new javax.swing.JButton();
        jLabel5 = new javax.swing.JLabel();
        lbl_discount = new javax.swing.JLabel();
        btn_back = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel1.setText("Confirm Payment");

        jLabel2.setText("Economy Seats : ");

        jLabel3.setText("Business Seats : ");

        jLabel4.setText("Platinum Seats : ");

        lbl_econ_seat.setText("jLabel5");

        lbl_busi_seat.setText("jLabel6");

        lbl_plati_seat.setText("jLabel7");

        lbl_econ_price.setText("jLabel8");

        lbl_busi_price.setText("jLabel9");

        lbl_plati_price.setText("jLabel10");

        lbl_seat_total.setText("jLabel11");

        lbl_price_total.setText("jLabel12");

        btn_book.setText("Confirm Payment");
        btn_book.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_bookActionPerformed(evt);
            }
        });

        jLabel5.setText("Discount : ");

        lbl_discount.setText("jLabel6");

        btn_back.setText("Go Back");
        btn_back.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_backActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(74, 74, 74)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel3)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(lbl_busi_seat)
                                        .addGap(18, 18, 18)
                                        .addComponent(lbl_busi_price))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel2)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(lbl_econ_seat)
                                        .addGap(18, 18, 18)
                                        .addComponent(lbl_econ_price))
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                        .addComponent(btn_book)
                                        .addGroup(layout.createSequentialGroup()
                                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                                .addComponent(lbl_seat_total)
                                                .addGroup(layout.createSequentialGroup()
                                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                                        .addComponent(jLabel5)
                                                        .addComponent(jLabel4))
                                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                    .addComponent(lbl_plati_seat)))
                                            .addGap(18, 18, 18)
                                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                .addComponent(lbl_plati_price)
                                                .addComponent(lbl_price_total)
                                                .addComponent(lbl_discount))))))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(98, 98, 98)
                                .addComponent(jLabel1)))
                        .addGap(0, 80, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(btn_back)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(31, 31, 31)
                .addComponent(jLabel1)
                .addGap(49, 49, 49)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(lbl_econ_seat)
                    .addComponent(lbl_econ_price))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(lbl_busi_seat)
                    .addComponent(lbl_busi_price))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(lbl_plati_seat)
                    .addComponent(lbl_plati_price))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(lbl_discount))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lbl_price_total)
                    .addComponent(lbl_seat_total))
                .addGap(18, 18, 18)
                .addComponent(btn_book)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 79, Short.MAX_VALUE)
                .addComponent(btn_back)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_bookActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_bookActionPerformed
        bookSeat();
    }//GEN-LAST:event_btn_bookActionPerformed

    private void btn_backActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_backActionPerformed
        UserHome um = new UserHome();
        this.setVisible(false);
        um.setVisible(true);
    }//GEN-LAST:event_btn_backActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_back;
    private javax.swing.JButton btn_book;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel lbl_busi_price;
    private javax.swing.JLabel lbl_busi_seat;
    private javax.swing.JLabel lbl_discount;
    private javax.swing.JLabel lbl_econ_price;
    private javax.swing.JLabel lbl_econ_seat;
    private javax.swing.JLabel lbl_plati_price;
    private javax.swing.JLabel lbl_plati_seat;
    private javax.swing.JLabel lbl_price_total;
    private javax.swing.JLabel lbl_seat_total;
    // End of variables declaration//GEN-END:variables
}
