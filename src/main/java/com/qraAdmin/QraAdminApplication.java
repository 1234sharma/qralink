package com.qraAdmin;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.qraAdmin.controller.LoginController;
@ComponentScan(basePackages = "com.qraAdmin")
@Configuration
@SpringBootApplication(exclude={DataSourceAutoConfiguration.class})
public class QraAdminApplication {

	public static void main(String[] args) {
		new File(LoginController.uploadDirectory).mkdir();
		SpringApplication.run(QraAdminApplication.class, args);
	}

}
