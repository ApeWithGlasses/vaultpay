package com.vaultpay.vaultpayapi.web.controller;

import com.vaultpay.vaultpayapi.persistence.entity.BankAccount;
import com.vaultpay.vaultpayapi.services.BankAccountService;
import com.vaultpay.vaultpayapi.services.dto.BankAccountRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@RestController
@RequestMapping("/api/accounts")
@RequiredArgsConstructor
public class BankAccountController {
    private final BankAccountService bankAccountService;

    @PostMapping("/register/{userId}")
    public ResponseEntity<BankAccount> registerBankAccount(@PathVariable Long userId, @RequestBody BankAccountRequest request) {
        BankAccount createdBankAccount = bankAccountService.registerBankAccount(
                userId,
                request.getAccountNumber(),
                request.getInitialBalance()
        );
        return ResponseEntity.status(HttpStatus.CREATED).body(createdBankAccount);
    }

    @GetMapping("/{userId}")
    public ResponseEntity<List<BankAccount>> getBankAccountsByUser(@PathVariable Long userId) {
        List<BankAccount> bankAccounts = bankAccountService.getBankAccountsByUser(userId);
        return ResponseEntity.ok(bankAccounts);
    }

    @PutMapping("/update/{accountNumber}")
    public ResponseEntity<BankAccount> updateBalance(@PathVariable String accountNumber, @RequestBody BigDecimal newBalance) {
        BankAccount updatedBankAccount = bankAccountService.updateBalance(accountNumber, newBalance);
        return ResponseEntity.ok(updatedBankAccount);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteBankAccountById(@PathVariable Long id) {
        bankAccountService.deleteBankAccountById(id);
        return ResponseEntity.noContent().build();
    }
}
