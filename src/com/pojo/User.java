package com.pojo;
/**
 *cwl数据库中user表的持久化类，与持久层关联
 */
public class User {
	private Integer uid;//主键
	private String username;
	private String password;

	public User(){
	}
	public User(String username, String password){
		this.username = username;
		this.password = password;
	}
	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString(){
		return "User{"
				+ "id="
				+",username='" +username+'\''+
				",password='" + password +'\''+
				'}';
	}
}
