package com.vaultpay.vaultpayapi.services.dto;

import lombok.Data;

@Data
public class UserRegisterDTO {
    private String name;
    private String password;
    private String email;
}
