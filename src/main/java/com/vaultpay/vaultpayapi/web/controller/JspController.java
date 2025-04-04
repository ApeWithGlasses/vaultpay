package com.vaultpay.vaultpayapi.web.controller;

import com.vaultpay.vaultpayapi.services.dto.UserRegisterDTO;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import jakarta.servlet.http.HttpSession;
import java.util.Base64;
import com.vaultpay.vaultpayapi.persistence.entity.User;
import com.vaultpay.vaultpayapi.services.UserService;
import lombok.RequiredArgsConstructor;
import com.vaultpay.vaultpayapi.services.BankAccountService;
import java.math.BigDecimal;
import java.util.List;
import com.vaultpay.vaultpayapi.persistence.entity.BankAccount;
import java.util.Optional;

@Controller
@RequiredArgsConstructor
public class JspController {
    private final UserService userService;
    private final PasswordEncoder passwordEncoder;
    private final BankAccountService bankAccountService;

    @GetMapping("/web/inicio")
    public String inicio(Model model) {
        model.addAttribute("message", "Bienvenido a VaultPay!");
        return "inicio";
    }

    @GetMapping("/web/registro")
    public String registro(Model model) {
        model.addAttribute("successMessage", null);
        model.addAttribute("errorMessage", null);
        return "registro";
    }

    @PostMapping("/web/registro")
    public String processRegistro(
            @RequestParam String name,
            @RequestParam String email,
            @RequestParam String password,
            @RequestParam String telefono,
            Model model) {
        try {
            UserRegisterDTO newUser = new UserRegisterDTO();
            newUser.setName(name);
            newUser.setEmail(email);
            newUser.setPassword(password);
            
            userService.registerUser(newUser);
            
            model.addAttribute("successMessage", "¡Registro exitoso! Por favor inicia sesión.");
            return "redirect:/web/login";
        } catch (Exception e) {
            model.addAttribute("errorMessage", "Error al registrar el usuario: " + e.getMessage());
            return "registro";
        }
    }

    @GetMapping("/web/login")
    public String login(Model model, HttpSession session) {
        model.addAttribute("successMessage", null);
        model.addAttribute("errorMessage", null);
        
        String authCredentials = (String) session.getAttribute("authCredentials");
        if (authCredentials != null) {
            return "redirect:/web/dashboard";
        }
        return "login";
    }

    @PostMapping("/web/login")
    public String processLogin(@RequestParam String email, 
                             @RequestParam String password,
                             Model model,
                             HttpSession session) {
        try {
            User user = userService.findUserByEmail(email)
                    .orElseThrow(() -> new RuntimeException("Usuario no encontrado"));
            if (user == null) {
                model.addAttribute("errorMessage", "Usuario no encontrado");
                return "login";
            }

            if (!passwordEncoder.matches(password, user.getPassword())) {
                model.addAttribute("errorMessage", "Credenciales incorrectas. Por favor, intente nuevamente.");
                return "login";
            }

            String credentials = email + ":" + password;
            String base64Credentials = Base64.getEncoder().encodeToString(credentials.getBytes());

            session.setAttribute("authCredentials", base64Credentials);
            session.setAttribute("userEmail", email);
            return "redirect:/web/dashboard";
        } catch (Exception e) {
            model.addAttribute("errorMessage", "Error al procesar la solicitud: " + e.getMessage());
            return "login";
        }
    }

    @GetMapping("/web/nosotros")
    public String nosotros(Model model) {
        return "nosotros";
    }

    @GetMapping("/web/planes")
    public String planes(Model model) {
        return "planes";
    }

    @GetMapping("/web/servicios")
    public String servicios(Model model) {
        return "servicios";
    }

    @GetMapping("/web/contacto")
    public String contacto(Model model) {
        return "contacto";
    }

    @GetMapping("/web/dashboard")
    public String dashboard(Model model, HttpSession session) {
        String userEmail = (String) session.getAttribute("userEmail");

        if (userEmail == null) {
            return "redirect:/web/login";
        }

        try {
            User user = userService.findUserByEmail(userEmail)
                    .orElseThrow(() -> new RuntimeException("Usuario no encontrado"));

            String userName = user.getName();
            String userInitial = userName.substring(0, 1).toUpperCase();
            model.addAttribute("userName", userName);
            model.addAttribute("userInitial", userInitial);

            List<BankAccount> accounts = bankAccountService.getBankAccountsByUser(user.getId());
            model.addAttribute("accounts", accounts);

        } catch (Exception e) {
            model.addAttribute("errorMessage", "Error al cargar los datos: " + e.getMessage());
        }

        return "dashboard";
    }

    @PostMapping("/web/accounts/add")
    public String addAccount(@RequestParam String accountNumber, @RequestParam double balance,
                           HttpSession session, Model model) {
        try {
            String userEmail = (String) session.getAttribute("userEmail");
            if (userEmail == null) {
                model.addAttribute("errorMessage", "Sesión expirada. Por favor, inicia sesión nuevamente.");
                return "redirect:/web/login";
            }

            User user = userService.findUserByEmail(userEmail)
                    .orElseThrow(() -> new RuntimeException("Usuario no encontrado"));

            Optional<BankAccount> existingAccount = bankAccountService.getBankAccountsByUser(user.getId())
                .stream()
                .filter(a -> a.getAccountNumber().equals(accountNumber))
                .findFirst();

            if (existingAccount.isPresent()) {
                model.addAttribute("errorMessage", "Ya existe una cuenta con este número.");
                return "redirect:/web/dashboard";
            }

            bankAccountService.registerBankAccount(user.getId(), accountNumber, BigDecimal.valueOf(balance));
            model.addAttribute("successMessage", "Cuenta agregada exitosamente");
        } catch (Exception e) {
            model.addAttribute("errorMessage", "Error al agregar la cuenta: " + e.getMessage());
        }
        return "redirect:/web/dashboard";
    }

    @PostMapping("/web/accounts/update-balance")
    public String updateBalance(@RequestParam String accountNumber, @RequestParam double balance, 
                              HttpSession session, Model model) {
        try {
            String userEmail = (String) session.getAttribute("userEmail");
            if (userEmail == null) {
                return "redirect:/login";
            }

            User user = userService.findUserByEmail(userEmail)
                    .orElseThrow(() -> new RuntimeException("Usuario no encontrado"));

            bankAccountService.updateBalance(accountNumber, BigDecimal.valueOf(balance));
            model.addAttribute("successMessage", "Saldo actualizado exitosamente");
        } catch (Exception e) {
            model.addAttribute("errorMessage", "Error al actualizar el saldo: " + e.getMessage());
        }
        return "redirect:/web/dashboard";
    }

    @PostMapping("/web/accounts/delete")
    public String deleteAccount(@RequestParam String accountNumber, HttpSession session, Model model) {
        try {
            String userEmail = (String) session.getAttribute("userEmail");
            if (userEmail == null) {
                return "redirect:/web/login";
            }

            User user = userService.findUserByEmail(userEmail)
                    .orElseThrow(() -> new RuntimeException("Usuario no encontrado"));

            Optional<BankAccount> account = bankAccountService.getBankAccountsByUser(user.getId())
                .stream()
                .filter(a -> a.getAccountNumber().equals(accountNumber))
                .findFirst();

            if (account.isPresent()) {
                bankAccountService.deleteBankAccountById(account.get().getId());
                model.addAttribute("successMessage", "Cuenta eliminada exitosamente");
            } else {
                model.addAttribute("errorMessage", "No se encontró la cuenta o no tienes permisos para eliminarla");
            }
        } catch (Exception e) {
            model.addAttribute("errorMessage", "Error al eliminar la cuenta: " + e.getMessage());
        }
        return "redirect:/web/dashboard";
    }

    @PostMapping("/web/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("authCredentials");
        session.removeAttribute("userEmail");
        session.invalidate();
        return "redirect:/web/login";
    }
}
