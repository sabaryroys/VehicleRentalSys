/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package vehiclerentalsys;

import com.mysql.jdbc.Connection;

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
public class DbConSelect {
    public ResultSet selectDb(String query) throws SQLException
    {
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental","root","tiger");
            PreparedStatement stmt = con.prepareStatement(query);
            rs = stmt.executeQuery();
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DbConSelect.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    
}
