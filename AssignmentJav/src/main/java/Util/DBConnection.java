package Util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static String url = "jdbc:mysql://localhost:3306/qltt";
    private static String user = "root";      // thay bằng user MySQL của bạn
    private static String password = "tranhainam123"; // thay bằng mật khẩu MySQL

    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, user, password);
    }
}
