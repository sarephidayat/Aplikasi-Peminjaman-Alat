/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package GUIDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JComboBox;

/**
 *
 * @author User ID
 */
public class ComboBoxNIP {
    public static void loadNIP(JComboBox<String> comboBox) {
        String sql = "SELECT NIP FROM DOSEN";

        try (Connection conn = Koneksi.GetConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            comboBox.removeAllItems(); // Bersihkan dulu
            while (rs.next()) {
                comboBox.addItem(rs.getString("NIP"));
            }

        } catch (SQLException e) {
            System.out.println("Gagal memuat data: " + e.getMessage());
        }
    }

}
