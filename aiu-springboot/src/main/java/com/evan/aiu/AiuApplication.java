package com.evan.aiu;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
@SpringBootApplication
public class AiuApplication {

	public static void main(String[] args) {
		SpringApplication.run(AiuApplication.class, args);
	}

}
