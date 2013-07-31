package com.himan.service;

import java.util.List;

import com.himan.domain.User;

public interface UserService {
	public void addUser(User user);

	public List<User> getUser();
	
	public void deleteUser(User user);
}
