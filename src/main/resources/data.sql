USE vaultpay;

INSERT INTO users (email, name, password) VALUES
('email1@email.com', 'User One', '$2a$12$McdFPzgPh3jyKCI4V3BC1.s5HApqwbQi4gV5pq1g1lni.GxCnxY3C'),
('email2@email.com', 'User Two', '$2a$12$McdFPzgPh3jyKCI4V3BC1.s5HApqwbQi4gV5pq1g1lni.GxCnxY3C');

INSERT INTO bank_accounts (account_number, balance, user_id) VALUES
('ES123456789', 1000.00, 1),
('ES987654321', 2000.00, 2);
