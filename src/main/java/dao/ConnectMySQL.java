package dao;

import com.mysql.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectMySQL {
    public static Connection getConnection() {
        // đường dẫn đến server cơ sở dữ liệu
        String jdbcURL = "jdbc:mysql://localhost:3306/demojdbc";
        String jdbcUsername = "root";
        String jdbcPassword = "12345678";

        Connection connection = null;
        try {
            // gán driver của MySQL
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}
