package com.yash.onlinehomedecor.dao;


import com.yash.onlinehomedecor.domain.Admin;
import com.yash.onlinehomedecor.domain.User;
import org.springframework.stereotype.Repository;

import java.util.Collections;
import java.util.List;

@Repository
public class AdminDAOImpl implements AdminDAO{

    @Override
    public List<User> findAllBuyers() {
      //  String sql = "SELECT * FROM user WHERE role = 'BUYER'";
        return null;
    }

    @Override
    public List<User> findAllSellers() {
        return Collections.emptyList();
    }

    @Override
    public void updateSellerStatus(Integer userId, boolean approved) {

    }
}
