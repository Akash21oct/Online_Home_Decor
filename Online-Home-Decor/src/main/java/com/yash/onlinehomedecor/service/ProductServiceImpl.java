package com.yash.onlinehomedecor.service;
import com.yash.onlinehomedecor.dao.UserDAO;
import com.yash.onlinehomedecor.domain.Product;
import com.yash.onlinehomedecor.domain.User;
import com.yash.onlinehomedecor.exception.UserBlockedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Override
    public void save(Product product) {

    }

    @Override
    public void update(Product product) {

    }

    @Override
    public void delete(Product product) {

    }

    @Override
    public void delete(Integer productId) {

    }

    @Override
    public Product findById(Integer productId) {
        return null;
    }

    @Override
    public List<Product> findAll() {
        return Collections.emptyList();
    }

    @Override
    public List<Product> findByCategory(Integer categoryId) {
        return Collections.emptyList();
    }

    @Override
    public List<Product> findByShop(Integer shopId) {
        return Collections.emptyList();
    }

    @Override
    public List<Product> findBySeller(Integer sellerId) {
        return Collections.emptyList();
    }
}
