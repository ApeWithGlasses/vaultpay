package com.vaultpay.vaultpayapi.web.config;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.concurrent.TimeUnit;

@Component
public class JwtUtil {
    private static String SECRET_KEY = "vaultpay_secret_key";
    private static Algorithm ALGORITHM = Algorithm.HMAC256(SECRET_KEY.getBytes());

    public String create(String username) {
        return JWT.create()
                .withSubject(username)
                .withIssuer("vaultpay")
                .withIssuedAt(new Date())
                .withExpiresAt(new Date(System.currentTimeMillis() + TimeUnit.DAYS.toMillis(15)))
                .sign(ALGORITHM);
    }

    public boolean isValid(String token) {
        try {
            JWT.require(ALGORITHM)
                    .build()
                    .verify(token);
            return true;
        } catch (JWTVerificationException e) {
            return false;
        }
    }

    public String getUsername(String token) {
        return JWT.require(ALGORITHM)
                .build()
                .verify(token)
                .getSubject();
    }
}
