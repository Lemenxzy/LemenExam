package com.bufoon.service.user.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bufoon.dao.BaseDAO;
import com.bufoon.entity.User;
import com.bufoon.service.user.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private BaseDAO<User> baseDAO;

	@Override
	public void saveUser(User user) {
		baseDAO.save(user);
	}

	@Override
	public void updateUser(User user) {
		baseDAO.update(user);
	}

	@Override
	public User findUserById(int id) {
		return baseDAO.get(User.class, id);
	}

	@Override
	public void deleteUser(User user) {
		baseDAO.delete(user);
	}

	@Override
	public List<User> findAllList() {
		return baseDAO.find(" from User u order by u.id");
	}

	@Override
	public User findUserByNameAndPassword(String username, String password) {
		return baseDAO.get(
				" from User u where u.username = ? and u.password = ? ",
				new Object[] { username, password });
	}

	@Override
	public User findUserByIdentity(String identity) {

		return baseDAO.get(" from User u where u.username = ?",
				new Object[] { identity });
	}

}
