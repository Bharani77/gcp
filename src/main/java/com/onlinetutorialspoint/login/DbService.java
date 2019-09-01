package com.onlinetutorialspoint.login;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlinetutorialspoint.login.loginForm.LoginForm;
import com.onlinetutorialspoint.login.repository.DbRepository;

@Service
public class DbService {
	
	@Autowired
	private DbRepository dbRepository;
	
	@Transactional
	@PostConstruct
		public void init(){
		LoginForm log = new LoginForm();
		dbRepository.save(new LoginForm(1,log.getUserName(),log.getPassword()));
	}
	
	public List<LoginForm> findAll() {
		return dbRepository.findAll();
	}

	
	
	

}
