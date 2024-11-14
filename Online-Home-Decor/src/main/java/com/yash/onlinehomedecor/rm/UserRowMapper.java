package com.yash.onlinehomedecor.rm;

import com.yash.onlinehomedecor.domain.User;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserRowMapper implements RowMapper<User> {
    @Override
    public User mapRow(ResultSet resultSet, int i) throws SQLException {
        User user=new User();
        user.setName(resultSet.getString("name"));
        user.setEmail(resultSet.getString("email"));
        user.setId(resultSet.getInt("id"));
        return user;
    }
}
