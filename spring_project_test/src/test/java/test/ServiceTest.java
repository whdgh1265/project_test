package test;


import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.hamcrest.CoreMatchers.nullValue;
import static org.junit.Assert.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import dao.UsersDao;
import dto.Users;
import service.UsersService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/jdbc-config.xml")
public class ServiceTest {
	private static Logger logger = LoggerFactory.getLogger(ServiceTest.class);
	@Autowired
	UsersService service;
	@Autowired
	UsersDao dao;
	
	@Test
	public void testServiceBean(){
		logger.trace("service bean ok? {}",service);
		assertThat(service, is(not(nullValue())));
	}
	@Test(expected=ArithmeticException.class)
	public void testInsertAndUpdate(){
		Users user = new Users();
		user.setId("lol2");
		String name="롤2";
		user.setNickname(name);
		user.setPass("123");
		user.setEmail("every9168@nate.com");
		service.insertAndupdate(user);
		Users retrieved = dao.selectUser(user.getId());
		assertThat(retrieved.getNickname(), is(not(name)));
		
	}
	

}
