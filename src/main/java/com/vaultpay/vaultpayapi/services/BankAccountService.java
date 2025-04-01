package com.vaultpay.vaultpayapi.services;

import com.vaultpay.vaultpayapi.persistence.entity.BankAccount;
import com.vaultpay.vaultpayapi.persistence.entity.User;
import com.vaultpay.vaultpayapi.persistence.repository.BankAccountRepository;
import com.vaultpay.vaultpayapi.persistence.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class BankAccountService {
    private final BankAccountRepository bankAccountRepository;
    private final UserRepository userRepository;

    public BankAccount registerBankAccount(Long userId, String accountNumber, BigDecimal initalBalance) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found"));
        BankAccount bankAccount = new BankAccount();
        bankAccount.setUser(user);
        bankAccount.setAccountNumber(accountNumber);
        bankAccount.setBalance(initalBalance);
        return bankAccountRepository.save(bankAccount);
    }

    public List<BankAccount> getBankAccountsByUser(Long userId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found"));
        return bankAccountRepository.findByUser(user);
    }

    public BankAccount updateBalance(String accountNumber, BigDecimal newBalance) {
        BankAccount bankAccount = bankAccountRepository.findByAccountNumber(accountNumber)
                .orElseThrow(() -> new RuntimeException("Bank account not found"));
        bankAccount.setBalance(newBalance);
        return bankAccountRepository.save(bankAccount);
    }

    public void deleteBankAccountById(Long id) {
        bankAccountRepository.deleteById(id);
    }
}
