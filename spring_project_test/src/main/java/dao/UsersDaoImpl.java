package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import dto.Users;

@Repository
public class UsersDaoImpl implements UsersDao{
	@Autowired
	JdbcTemplate jt;
	@Autowired
	NamedParameterJdbcTemplate namedjt;
	
	@Override
	public int insertUser(Users user) {
		int result=-1;
		String sql = "insert into users values(?,?,?,?)";
		result = jt.update(sql,user.getId(),user.getNickname(),user.getPass());
		return result;
	}

	@Override
	public Users selectUser(String id) {
		String sql = "select * from users where id=?";
		Users users = jt.queryForObject(sql,getUsersRowMapper(),id);
		return users;
	}
	private RowMapper<Users> getUsersRowMapper(){
		return new RowMapper<Users>(){

			@Override
			public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
				Users user = new Users();
				user.setId(rs.getString("id"));
				user.setNickname(rs.getString("nickname"));
				user.setPass(rs.getString("pass"));
				return user;
			}};
	}

}
