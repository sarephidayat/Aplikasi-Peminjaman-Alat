/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package GUIDB;

/**
 *
 * @author User ID
 */
import com.mysql.cj.jdbc.Driver;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class Koneksi {
    //private static Connection koneksi;
    public static Connection GetConnection()throws SQLException {
    try {
            Class.forName("com.mysql.cj.jdbc.Driver");
    } 
    catch (ClassNotFoundException e) {
            throw new SQLException("Driver MySQL tidak ditemukan.", e);
    }

        return DriverManager.getConnection("jdbc:mysql://localhost:3307/2023_akademik", "root", "");
    }  
}
