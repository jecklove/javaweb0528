package org.jgs1904.service;

import java.sql.SQLException;

import org.jgs1904.dao.UserDao;
import org.jgs1904.entity.User;

/**
 * 用户业务类
 * @author junki
 * @date 2020年5月28日
 */
public class UserService {
	
	private UserDao userDao = new UserDao();
	
	public int regist(User user) {
		return userDao.insert(user);
	}

	public User login(User user) throws SQLException {
		return userDao.login(user);
	}
}
