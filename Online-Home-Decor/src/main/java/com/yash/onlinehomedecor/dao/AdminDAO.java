package com.yash.onlinehomedecor.dao;
import com.yash.onlinehomedecor.domain.User;
import java.util.List;





public interface AdminDAO {
    List<User> findAllBuyers();
    List<User> findAllSellers();
    void updateSellerStatus(Integer userId, boolean approved);
}