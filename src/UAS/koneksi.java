/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package UAS;

/**
 *
 * @author syari
 */
import com.mysql.cj.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class koneksi {
    private static Connection koneksi;

    public static Connection GetConnection() throws SQLException {
        if (koneksi == null || koneksi.isClosed()) { // Periksa apakah koneksi sudah ditutup
            Driver driver = new Driver();
            koneksi = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_peminjamanalat", "root", "");
        }
        return koneksi;
    }

    public static void closekoneksi() throws SQLException {
        if (koneksi != null && !koneksi.isClosed()) {
            koneksi.close();
            koneksi = null; // Set koneksi ke null setelah ditutup
            System.out.print("Koneksi ditutup\n");
        }
    }
}