package service;

import dao.ProductDao;
import model.Product;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    public static List<Product> products = ProductDao.getAllProduct();

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void save(Product product) {
        products.add(product);
        ProductDao.getAllProduct();
    }

    @Override
    public int findIndexById(int id) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == id) {
                return i;
            }
        }
        return -1;
    }

    @Override
    public Product findById(int id) {
        for (Product product : products) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }

    @Override
    public void update(int id, Product product) {
        int indexOf = findIndexById(id);
        products.set(indexOf, product);
    }

    @Override
    public void delete(int index) {
        products.remove(index);
    }
}
