package com.vaultpay.vaultpayapi.services;

import com.vaultpay.vaultpayapi.persistence.entity.User;
import com.vaultpay.vaultpayapi.persistence.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public User registerUser(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        return userRepository.save(user);
    }

    public Optional<User> findUserById(Long id) {
        return userRepository.findById(id);
    }

    public User updateUser(Long id, User userUpdated) {
        return userRepository.findById(id)
                .map(user -> {
                    user.setName(userUpdated.getName());
                    user.setEmail(userUpdated.getEmail());
                    user.setPassword(userUpdated.getPassword());
                    return userRepository.save(user);
                })
                .orElseThrow(() -> new RuntimeException("User not found"));
    }

    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }
}
