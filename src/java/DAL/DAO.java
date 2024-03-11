/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Bean.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author admin
 */
public class DAO {
    private static final String INSERT="Insert into Product_DE170208 (ProductID,ProductName,Quantity,Price,inputDate) VALUES(?,?,?,?,?)";
    private static final String LIST="SELECT * FROM [Product_DE170208]";
    public static void insertProduct(String id,String name,int quantity,float price,String inputDate){
        PreparedStatement ptm =null;
        try(Connection con = DBConnection.getConnection()){
            if(con !=null){
                con.setAutoCommit(true);
                ptm = con.prepareStatement(INSERT);
                ptm.setString(1, id);
                ptm.setString(2, name);
                ptm.setInt(3, quantity);
                ptm.setFloat(4, price);
                ptm.setString(5, inputDate);
                ptm.executeUpdate();
            }
        }catch(Exception e){
        }
    }
    public static ArrayList<Product> list(){
        ArrayList<Product> searchResults = new ArrayList<>();
        ResultSet rs = null;
        try(Connection con = DBConnection.getConnection()){
            Statement statement = con.createStatement();
            rs = statement.executeQuery(LIST);
            while(rs.next()){
                String id = rs.getString("ProductID");
                String name = rs.getString("ProductName");
                int quantity = rs.getInt("Quantity");
                float price = rs.getFloat("Price");
                Date inputDate = rs.getDate("inputDate");
                Product p = new Product(id,name,quantity,price,inputDate);
                searchResults.add(p);
            }
        }catch(Exception e){
        }
        return searchResults;
    }
}
