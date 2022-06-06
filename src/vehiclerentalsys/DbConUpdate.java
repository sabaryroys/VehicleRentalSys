/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package vehiclerentalsys;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sabari Roy
 */
public class DbConUpdate {
    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


/**
 *
 * @author Sabari Roy
 */

public void updateDb(String query) throws SQLException
 {
    

    {
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle_db","root","");
            PreparedStatement stmt = con.prepareStatement(query);
         
          stmt.executeUpdate();
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DbConDelete.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
    }
    
}
}

    

