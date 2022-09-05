package com.dao;

import com.pojo.User;
import org.apache.ibatis.annotations.Param;
/*
 * 对用户进行操作的DAO接口，在编写DAO接口时候涉及到一个配置文件，mapper/UserMapper.xml，在xml里写具体SQL语句
 * 该Dao接口只公布了操作的一系列方法，无需进行实现（当然也可以实现），可以交给spring来实现它。
 *
 */
 public interface UserDao {
	/**
	 * 根据用户名和密码判断用户是否合法
	 *
	 * @param username
	 *            用户名
	 * @param password
	 *            密码
	 * @return 如果登录失败，返回null，否则返回非空
	 */

	public User checkUser(@Param("username")String username,@Param("password")String password);
}
