package dao;

import dto.Users;

public interface UsersDao {
	public int insertUser(Users user);

	public Users selectUser(String id);
}
