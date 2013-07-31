package com.himan.dao;

import java.util.List;
import com.himan.domain.User;

public interface UserDao {
public void saveUser ( User user );
public List<User> getUser();
public void deleteUser(User user);
}
