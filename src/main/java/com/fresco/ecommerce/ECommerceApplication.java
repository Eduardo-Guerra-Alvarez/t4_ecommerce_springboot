package com.fresco.ecommerce;

import com.fresco.ecommerce.models.User;
import com.fresco.ecommerce.repo.UserRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@SpringBootApplication
public class ECommerceApplication {

	private static Logger LOG = LoggerFactory
			.getLogger(ECommerceApplication.class);


	public static void main(String[] args) {
		SpringApplication.run(ECommerceApplication.class, args);
	}

}


