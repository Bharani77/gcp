package com.onlinetutorialspoint.login.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.onlinetutorialspoint.login.loginForm.LoginForm;

public interface DbRepository extends JpaRepository <LoginForm, Integer>{
	

}
