/*package com.onlinetutorialspoint.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.onlinetutorialspoint.login.loginForm.LoginForm;

@RestController
public class DbController {
	
	@Autowired
	private DbService dbService;
	

	@GetMapping("/pgdatabase")
	public List<LoginForm> users() {
		return dbService.findAll();
	}
}*/
