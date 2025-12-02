package com.cafe.cafe_management_api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EntityScan(basePackages = "com.cafe.cafe_management_api.model") // ये add करो
@EnableJpaRepositories(basePackages = "com.cafe.cafe_management_api.repository")
public class CafeManagementApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(CafeManagementApiApplication.class, args);
	}

}
