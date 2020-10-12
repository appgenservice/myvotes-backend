package com.cheenath.rest.service;

import com.cheenath.infra.DataSource;
import com.cheenath.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.UUID;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private DataSource dataSource;

    private static final String template = "Hello, %s!";

    @PostMapping
    public String addUser(@RequestParam(value = "name") String name) {
        UUID key = UUID.randomUUID();
        User user = new User(key, name);
        return dataSource.add(user).toString();
    }

    @GetMapping
    public User getUser(@RequestParam(value = "key") String key) {
        return (User) dataSource.get(UUID.fromString(key));
    }

    @GetMapping("/list")
    public Collection<User> getAllUser() {
        return  dataSource.fetchAll();
    }
}

