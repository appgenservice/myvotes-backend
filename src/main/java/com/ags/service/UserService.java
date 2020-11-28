package com.ags.service;

import com.ags.data.User;
import com.ags.data.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public User getUser(Long userId) {
        return userRepository.findById(userId).orElse(null);
    }
    public Iterable<User> getAllUsers() {
        return userRepository.findAll();
    }

    public User addUser(final User user) {
        return userRepository.save(user);
    }

    public void deleteUser(Long userId) {
        userRepository.deleteById(userId);
    }
}
