package com.vaultpay.vaultpayapi.persistence.repository;

import com.vaultpay.vaultpayapi.persistence.entity.BankAccount;
import com.vaultpay.vaultpayapi.persistence.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface BankAccountRepository extends JpaRepository<BankAccount, Long> {
    List<BankAccount> findByUser(User user);
    Optional<BankAccount> findByAccountNumber(String accountNumber);
}
