package com.cheenath.rest.service;

import com.cheenath.pojo.User;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {

    private static final String template = "Hello, %s!";

    @GetMapping
    public User getUser(@RequestParam(value = "name") String name) {
        return new User(name);
    }

    @PostMapping
    public User addUser(@RequestParam(value = "name") String name) {
        return new User(name);
    }
}

