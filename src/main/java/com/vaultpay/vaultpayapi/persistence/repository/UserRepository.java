package com.vaultpay.vaultpayapi.persistence.repository;

import com.vaultpay.vaultpayapi.persistence.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(String email);
}
