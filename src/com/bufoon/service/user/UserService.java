package com.bufoon.service.user;

import java.util.List;

import com.bufoon.entity.User;

public interface UserService {

	public void saveUser(User user);
	
	public void updateUser(User user);
	
	public User findUserById(int id);
	
	public User findUserByIdentity(String identity);
	
	public void deleteUser(User user);
	
	public List<User> findAllList();
	
	public User findUserByNameAndPassword(String username, String password);
}
