package com.qraAdmin.configuration;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
@Configuration
public class JdbcConfig {
	private final String driverClassName = "com.mysql.cj.jdbc.Driver";
	private final String dbUrl = "jdbc:mysql://localhost:3306/qralink";
	private final String userName = "root";
	private final String passWord = "root";
//
//	public JdbcTemplate getJdbcTemplate() throws SQLException {
//		// setting up dataSource per thread
//		String dbName = Long.toString(Thread.currentThread().getId());
//		DataSource dataSource = getDataSource(dbName);
//		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
//		return jdbcTemplate;
//
//	}
//
//	private DataSource getDataSource(String dbName) throws SQLException {
//		String db_Url = dbUrl + dbName;
//		DriverManagerDataSource dataSource = new DriverManagerDataSource();
//
//		dataSource.setUsername(userName);
//		dataSource.setPassword(passWord);
//		dataSource.setUrl(db_Url);
//		dataSource.setDriverClassName(driverClassName);
//		return dataSource;
//	}

	 
	      @Bean
	      public DataSource dataSource(){
	         DriverManagerDataSource dataSource = new DriverManagerDataSource();
	         dataSource.setDriverClassName(driverClassName);
	         dataSource.setUrl(dbUrl);
	         dataSource.setUsername(userName);
	         dataSource.setPassword(passWord);
	         return dataSource;
	      }
	   
}
