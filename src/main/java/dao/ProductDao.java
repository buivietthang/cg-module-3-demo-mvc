package dao;

import model.Product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private static Connection connection = ConnectMySQL.getConnection();

        public static List<Product> getAllProduct() {
        String sqlGetAll = "SELECT * FROM product";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sqlGetAll);

            ArrayList<Product> listProduct = new ArrayList<>();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                int price = resultSet.getInt("price");

                listProduct.add(new Product(id, name, price));
            }
            return listProduct;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
