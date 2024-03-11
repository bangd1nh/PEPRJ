/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author admin
 */
public class DBConnection {
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String dbURL = "jdbc:sqlserver://localhost:1433;databaseName=PRJ301_DE170208;";
    String user = "sa";
    String pw = "123456";
    Connection con = DriverManager.getConnection(dbURL,user,pw);
    return con;
    }
}
