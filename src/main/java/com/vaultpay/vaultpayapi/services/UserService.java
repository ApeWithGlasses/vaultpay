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
        // La contraseña ya viene codificada del controlador
        return userRepository.save(user);
    }

    public Optional<User> findUserById(Long id) {
        return userRepository.findById(id);
    }

    public Optional<User> findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public User updateUser(Long id, User userUpdated) {
        return userRepository.findById(id)
                .map(user -> {
                    user.setName(userUpdated.getName());
                    user.setEmail(userUpdated.getEmail());
                    user.setPassword(passwordEncoder.encode(userUpdated.getPassword()));
                    return userRepository.save(user);
                })
                .orElseThrow(() -> new RuntimeException("User not found"));
    }
}
