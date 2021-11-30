package com.example.demo2;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@RestController
@RequestMapping("/hello")
@SpringBootApplication
public class Demo2Application {

	@GetMapping
	public String helloMsg(){
		return "Hello, I need to learn JS OOP";
	}
	public static void main(String[] args) {
		SpringApplication.run(Demo2Application.class, args);
	}

}
