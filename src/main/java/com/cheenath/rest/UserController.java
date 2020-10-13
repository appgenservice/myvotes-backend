package com.cheenath.rest;
import com.cheenath.data.User;
import com.cheenath.data.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserRepository userRepository;
    @GetMapping
    public User getUser(@RequestParam(value = "userid") Long userId) {
        return userRepository.findById(userId).orElse(null);
    }
    @GetMapping(value = "/list")
    public Iterable<User> getAllUser() {
        return userRepository.findAll();
    }

    @PostMapping
    public User addUser(@RequestParam(value = "firstName") String firstName, @RequestParam(value = "lastName") String lastName) {
        return userRepository.save(new User(firstName, lastName));
    }

    @DeleteMapping
    public void deleteUser(@RequestParam(value = "userid") Long userId) {
        userRepository.deleteById(userId);
    }

}
