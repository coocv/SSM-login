/**
 *
 */
package com.service;

import com.dao.UserDao;
import com.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 实现UserService接口的类
 */

@Service  //告知spring，该类要被纳入spring的管理范围
public class UserServiceImpl implements UserService {

	@Autowired  // 这个属性的赋值由spring自动完成
	private UserDao userdao;

	public User login(String username, String password) {
		return userdao.checkUser(username, password);
		//调用userdao对象的方法，检查用户名和密码是否正确。
	}

}