/**
 *
 */
package com.service;

import com.pojo.User;
/**
 * 进行登录验证的业务接口UserService
 */
public interface UserService {
	/**
	 * 登录验证业务方法
	 * @param username  用户名
	 * @param password   密码
	 * @return  如果登录失败返回null，否则返回非空
	 */
	public User login(String username,String password);
}
