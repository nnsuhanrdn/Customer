/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.my.unikl.code;
import java.sql.*;

/**
 *
 * @author Nazsuha
 */
public class StoreData {
    private PreparedStatement pstmt;
    
 public StoreData(){
     initializeJdbc();
 }
 
 private void initializeJdbc(){
     try{
      String driver = "org.apache.derby.jdbc.ClientDriver";
      String connectionString = "jdbc:derby://localhost:1527/Customer";
      
       // Load the Oracle JDBC Thin driver
      Class.forName(driver);
      System.out.println("Driver " + driver + " loaded");

      // Connect to the sample database
      Connection conn = DriverManager.getConnection
        (connectionString);
      System.out.println("Database " + connectionString +
        " connected");

      // Create a Statement
      pstmt = conn.prepareStatement("insert into Address " +
        "(CustomerID, DiscountCode, Name, Telephone,Email, Fax, AddressLine1, AddressLine2, city, "
        + "state, zip, CreditLimit) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    }
    catch (Exception ex) {
     System.out.println(ex);
    }
  }
 
 public void storeCustomer(Customer customer) throws SQLException 
    {
    pstmt.setString(1, customer.getCustIdentityD());
    pstmt.setString(2, customer.getDiscountCode());
    pstmt.setString(3, customer.getName());
    pstmt.setString(4, customer.getTelephone());
    pstmt.setString(5, customer.getEmail());
    pstmt.setString(6, customer.getFax());
    pstmt.setString(7, customer.getAddressLine1());
    pstmt.setString(8, customer.getAddressLine2());
    pstmt.setString(9, customer.getCity());
    pstmt.setString(10, customer.getState());
    pstmt.setString(11, customer.getZip());
    pstmt.setString(12, customer.getCreditLimit());
    pstmt.executeUpdate();
  }
}
