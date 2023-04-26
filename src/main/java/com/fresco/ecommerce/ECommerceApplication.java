package com.fresco.ecommerce;

import com.fresco.ecommerce.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class ECommerceApplication {

	@Autowired
	UserRepo userRepo;


	public static void main(String[] args) {
		SpringApplication.run(ECommerceApplication.class, args);
	}

}


