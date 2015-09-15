package service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.UsersDao;
import dto.Users;

@Service
public class UsersServiceImpl implements UsersService {
	private static Logger logger = LoggerFactory.getLogger(UsersServiceImpl.class);
	
	@Autowired
	UsersDao dao;
	
	@Override
	@Transactional
	public void insertAndupdate(Users user) {
		int insertResult = dao.insertUser(user);
		logger.trace("insert over : {}",insertResult);
	}

}
