package com.yash.onlinehomedecor.service;

import com.yash.onlinehomedecor.domain.Product;

import java.util.List;

public interface ProductService {
        void save(Product product);
        void update(Product product);
        void delete(Product product);
        void delete(Integer productId);
        Product findById(Integer productId);
        List<Product> findAll();
        List<Product> findByCategory(Integer categoryId);
        List<Product> findByShop(Integer shopId);
        List<Product> findBySeller(Integer sellerId);
    }
