package com.ags.rest;

import com.ags.data.User;
import com.ags.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService service;


    @GetMapping
    public User getUser(@RequestParam(value = "userid") Long userId) {
        return service.getUser(userId);
    }
    @GetMapping(value = "/list")
    public Iterable<User> getAllUser() {
        return service.getAllUsers();
    }

    @PostMapping
    public User addUser(@RequestParam(value = "firstName") String firstName, @RequestParam(value = "lastName") String lastName) {
        return service.addUser(new User(firstName, lastName));
    }

    @DeleteMapping
    public void deleteUser(@RequestParam(value = "userid") Long userId) {
        service.deleteUser(userId);
    }

}